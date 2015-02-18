class Article < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	validates :title, presence: true,
               length: { minimum: 1 }
     belongs_to :category
end
