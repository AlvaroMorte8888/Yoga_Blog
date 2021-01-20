class Post < ApplicationRecord
  validation :title,presence: true,length: {minimum:5}
end  