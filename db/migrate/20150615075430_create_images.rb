class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.boolean :is_main, :default => false
      t.timestamps null: false
    end
  end
end
