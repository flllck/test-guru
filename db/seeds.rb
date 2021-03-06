# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

users = User.create!([
                       { name: 'Tyler', surname: 'Durden', email: 'projectmayhem@gmail.com', password: 'fsociety',
                         type: 'Admin' },
                       { name: 'Narrator', surname: 'Undifined', email: 'spacemonkey@gmail.com', password: 'fsleep',
                         type: 'User' }
                     ])

categories = Category.create!([
                                { title: 'Front-End' },
                                { title: 'Back-End' }
                              ])

tests = Test.create!([
                       { title: 'HTML', level: 0, category: categories[0], author: users[0] },
                       { title: 'JavaScript', level: 1, category: categories[0], author: users[0] },
                       { title: 'Go', level: 3, category: categories[1], author: users[1] },
                       { title: 'Ruby', level: 1, category: categories[1], author: users[1] }
                     ])

questions = Question.create!([
                               { body: 'Что такое HTML?', test: tests[0] },
                               { body: 'Где можно использовать JavaScript?', test: tests[1] },
                               { body: 'Сколько ключевых слов в языке Go?', test: tests[2] },
                               { body: 'Как называется самый популярный фреймворк языка Ruby для веба?',
                                 test: tests[3] }
                             ])

Answer.create!([
                 { body: 'Язык разметки документов для просмотра веб-страниц в браузере.', correct: true,
                   question: questions[0] },
                 { body: 'Язык программирования.', correct: false, question: questions[0] },
                 { body: 'Фреймворк.', correct: false, question: questions[0] },
                 { body: 'Веб-приложения', correct: false, question: questions[1] },
                 { body: 'Мобильные приложения', correct: false, question: questions[1] },
                 { body: 'Серверные приложения', correct: false, question: questions[1] },
                 { body: 'Можно во всех перечисленных', correct: true, question: questions[1] },
                 { body: '25', correct: true, question: questions[2] },
                 { body: '33', correct: false, question: questions[2] },
                 { body: '50', correct: false, question: questions[2] },
                 { body: 'Ruby On Rails', correct: true, question: questions[3] },
                 { body: 'React', correct: false, question: questions[3] },
                 { body: 'Laravel', correct: false, question: questions[3] }
               ])

Badge.create!([
                { name: 'first_try', img_url: 'first_try_img', rule: 1, rule_param: 'test_param' },
                { name: 'category', img_url: 'category_img', rule: 0, rule_param: 'test_patam1' },
                { name: 'level', img_url: 'level_img', rule: 2, rule_param: 'test_param2' }
])

