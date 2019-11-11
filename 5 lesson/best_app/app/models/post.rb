class Post < ApplicationRecord
  validates :name, :title, :content,  presence: true
  validates :name, :title, :content,  length: { minimum: 3 }
end
