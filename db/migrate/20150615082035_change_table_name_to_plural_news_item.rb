class ChangeTableNameToPluralNewsItem < ActiveRecord::Migration
  def change
    rename_table :news_item, :news_items
  end
end
