class CreateItemCateogries < ActiveRecord::Migration
  def up  
    create_table :item_categories, :id => false do |t|  
      t.references :item  
      t.references :category  
    end  
    add_index :item_categories, [:item_id, :category_id]  
    add_index :item_categories, [:category_id, :item_id]  
  end

  def down
      drop_table :item_categories  
  end
end
