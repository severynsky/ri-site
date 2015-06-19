json.id @newsItem.id
json.title @newsItem.title
json.body @newsItem.body
json.сategory @newsItem.category.title
json.created_at @newsItem.created_at
json.images @newsItem.images
json.images do |newsImage|
  if newsImage.is_main?
    json.main_img newsImage.picture.url
  end
end
json.image @newsItem.images.first.picture.url