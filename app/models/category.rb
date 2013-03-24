class Category < ActiveRecord::Base
  attr_accessible :content, :parent_id, :title
  acts_as_nested_set
  
  has_many :categorizations
  has_many :items, through: :categorizations
  
  extend FriendlyId
  friendly_id :title, :use => :scoped, :scope => :parent

  before_save :compute_path
  def compute_path
    node, nodes = self, []
    nodes << node = node.parent while node.parent

    self.path = nodes.reverse.push(self).collect(&:slug).join("/")
  end
  
  def get_all_related_items
      items = []
      self.children.each do |category|
         items << category.items
      end
      items
  end
end
