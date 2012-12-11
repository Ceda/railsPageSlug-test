class Page < ActiveRecord::Base
  attr_accessible :content, :parent_id, :title
    acts_as_tree
    
    extend FriendlyId
     friendly_id :title, :use => :scoped, :scope => :parent
     
     before_save :compute_path
     def compute_path
       self.path = ancestors.reverse.push(self).collect(&:slug).join("/")
     end
     
end
