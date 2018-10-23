class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_many :posts_tags
  has_many :tags, through: :posts_tags
  has_one_attached :picture

  accepts_nested_attributes_for :tags
end