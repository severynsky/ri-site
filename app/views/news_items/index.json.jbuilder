json.news @news do |news_item|
  json.id news_item.id
  json.title news_item.title
  json.body news_item.body
  json.created_at news_item.created_at
  json.category news_item.category
  json.images news_item.images do |news_image|
    if news_image.is_main == true
      json.main_image news_image.picture.url
    else
      json.img news_image.picture.url
    end
  end
end