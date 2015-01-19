(1..100).each do
  user_params = Hash.new
  user_params[:email] = Faker::Internet.email
  user_params[:password]  = "blah"
  new_user = User.create(user_params)

  (1..10).each do
    new_article = Article.new
    new_article.title = Faker::HipsterIpsum.words(rand(8)+2).join(" ")
    new_article.content = Faker::HipsterIpsum.paragraphs(1+ rand(4)).join("\n")
    new_article.save
    new_user.articles.push new_article
  end
end