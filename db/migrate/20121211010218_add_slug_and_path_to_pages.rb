class AddSlugAndPathToPages < ActiveRecord::Migration
  def change
    add_column :pages, :path, :string
    add_column :pages, :slug, :string
  end
end
