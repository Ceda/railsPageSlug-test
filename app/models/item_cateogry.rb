class ItemCateogry < ActiveRecord::Base
  belongs_to :item  
  belongs_to :category
end
