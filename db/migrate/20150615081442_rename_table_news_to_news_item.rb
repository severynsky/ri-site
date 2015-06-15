class RenameTableNewsToNewsItem < ActiveRecord::Migration
  def change
    rename_table :news, :news_item
  end
end
