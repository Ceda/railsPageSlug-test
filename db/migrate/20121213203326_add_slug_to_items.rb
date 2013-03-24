class AddSlugToItems < ActiveRecord::Migration
  def change
    add_column :items, :slug, :string
    add_column :items, :path, :string
  end
end
