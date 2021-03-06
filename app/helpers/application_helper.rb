module ApplicationHelper
  def current_year
    Date.current.year
  end

  def github_url(author, repo)
    link_to 'Project', "https://github.com/#{author}/#{repo}", target: '_blank', rel: 'nofollow'
  end
end
