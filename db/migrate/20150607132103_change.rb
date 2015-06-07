class Change < ActiveRecord::Migration

  def up
    rename_column :news, :category, :category_id
  end
end
