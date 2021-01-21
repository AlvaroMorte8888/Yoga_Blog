class Post < ApplicationRecord
  has_many :comments # has_many - имеет много
  validates :title,presence: true,length: {minimum:5} # 
end  