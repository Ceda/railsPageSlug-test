class Item < ActiveRecord::Base
  attr_accessible :description, :price, :title, :category_ids
  has_many :categorizations
  has_many :categories, through: :categorizations
  
  extend FriendlyId
   friendly_id :title, :use => :slugged
  end
