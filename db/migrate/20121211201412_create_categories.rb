class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.text :content
      t.integer :parent_id
      t.string :path
      t.string :slug

      t.timestamps
    end
  end
end
