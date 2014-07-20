class User < ActiveRecord::Base
  has_and_belongs_to_many :groups
  validates :name, presence: true, uniqueness: true
#  validates :id, presence: true
  validates :age, numericality: { :less_than_or_equal_to => 100 }  
end
