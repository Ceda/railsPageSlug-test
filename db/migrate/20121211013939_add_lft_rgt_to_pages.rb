class AddLftRgtToPages < ActiveRecord::Migration
  def change
    add_column :pages, :lft, :integer
    add_column :pages, :rgt, :integer
  end
end
