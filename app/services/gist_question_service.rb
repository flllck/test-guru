class GistQuestionService
  Result = Struct.new(:success?, :html_url)

  def initialize(question, client = default_client)
    @question = question
    @test = @question.test
    @client = client
  end

  def call
    resp = @client.create_gist(gist_params)
    Result.new(resp.html_url.present?, resp.html_url)
  end

  private

  def gist_params
    {
      description: I18n.t('gist_question_service.gist_params.description', title: @test.title),
      files: {
        'test-guru-description.txt' => {
          content: gist_content
        }
      }
    }
  end

  def gist_content
    [@question.body, *@question.answers.pluck(:body)].join("\n")
  end

  def default_client
    Octokit::Client.new(access_token: ENV.fetch('GITHUB_ACCESS_TOKEN'))
  end
end
