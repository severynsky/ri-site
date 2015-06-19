json.news @news do |news_item|
  json.id news_item.id
  json.title news_item.title
  json.intro news_item.intro_text
  json.body news_item.body
  json.created_at news_item.created_at
  json.category news_item.category
  json.image news_item.image.picture.url(:thumb)
end