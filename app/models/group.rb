class Group < ActiveRecord::Base
  has_and_belongs_to_many :users
  validates :title, presence: true
#  validates :id, presence: true  
end
