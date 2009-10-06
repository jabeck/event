class Category < ActiveRecord::Base
  has_many :events
  
  validates_presence_of :name, :on => :create, :message => " must be specified."
  validates_uniqueness_of :name, :on => :create, :message => "must be unique."
  
end
