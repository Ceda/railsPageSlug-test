class CreateCategoryItems < ActiveRecord::Migration
  def change
    create_table :category_items do |t|

      t.timestamps
    end
  end
end
