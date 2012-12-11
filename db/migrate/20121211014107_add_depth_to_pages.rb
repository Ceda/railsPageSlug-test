class AddDepthToPages < ActiveRecord::Migration
  def change
    add_column :pages, :depth, :integer
  end
end
