class RemoveColumnsNewsItems < ActiveRecord::Migration
  def change
    remove_column :news_items, :image_updated_at
    remove_column :news_items, :image_file_size
    remove_column :news_items, :image_content_type
    remove_column :news_items, :image_file_name
  end
end
