10.times do
  name = Faker::Name.first_name
  surname = Faker::Name.last_name
  email = Faker::Internet.email
  password = Faker::Crypto.md5
  admin = AdminUser.create!(name: name, surname: surname, email: email, password: password)
  p "Admin:#{admin.name} was created"
end

5.times do
  category_name = Faker::Game.platform
  category = Category.create!(title: category_name)
  p "Category:#{category.title} was created"
end

50.times do
  category_id  = rand(Category.count)
  category_id = category_id.zero? ? Category.first.id : category_id
  admin = AdminUser.last
  description = Faker::Books::Lovecraft.paragraphs
  begin
    title = Faker::Book.title + rand(100).to_s
    news = admin.news.create!(title: title, description: description, category_id: category_id, admin_user_id: admin.id)
  rescue
    title = Faker::DcComics.title + category_id.to_s
    news = admin.news.create!(title: title, description: description, category_id: category_id, admin_user_id: admin.id)
  ensure
    p "News:#{news.title} was created"
  end
end

100.times do
  begin
    title = Faker::Games::Dota.hero
    tag = Tag.create!(title: title) + rand(100).to_s
  rescue
    title = Faker::Games::Dota.item + rand(100).to_s
    tag = Tag.create!(title: title)
  ensure
    p "Tag :#{tag.title} was created"
  end
end

100.times do
  news_id = rand(News.count)
  news_id = news_id.zero? ? News.first.id : news_id
  tag_id = rand(Tag.count)
  tag_id = tag_id.zero? ? Tag.first.id : tag_id
  news_tag = NewsTag.create!(news_id: news_id, tag_id: tag_id)
  p "NewsTag relation:#{news_tag.id} was created"
end
