class Joke < ActiveRecord::Base
  validates :title,  :presence => true
  validates :foto,  :presence => true
  validates :description, :presence => true,  :length => { :minimum => 5 }

  has_many :comments
end
