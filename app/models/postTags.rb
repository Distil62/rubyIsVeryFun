class PostTags < ApplicationRecord
	
	belongs_to :posts
	belongs_to :tags

end