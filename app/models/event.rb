class Event < ActiveRecord::Base

  belongs_to :category
      
  validates_presence_of :occurs, :message => "was blank.  Please fill in all fields correctly."
  validates_presence_of :location, :message => "was blank.  Please fill in all fields correctly."
  validates_presence_of :title, :message => "was blank.  Please fill in all fields correctly."
  validates_presence_of :description, :message => "was blank.  Please fill in all fields correctly."
  validates_presence_of :cost,  :message => "was blank.  Please fill in all fields correctly."
                        
  
  validates_numericality_of :cost, :on => :create, 
                            :message => "must be a number."
  validates_associated :category, :on => :create
end
