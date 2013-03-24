class Page < ActiveRecord::Base
  attr_accessible :content, :parent_id, :title
   acts_as_nested_set
    
    extend FriendlyId
     friendly_id :title, :use => :scoped, :scope => :parent

     before_save :compute_path
     def compute_path
       node, nodes = self, []
       nodes << node = node.parent while node.parent
       
       self.path = nodes.reverse.push(self).collect(&:slug).join("/")
     end
     
end
