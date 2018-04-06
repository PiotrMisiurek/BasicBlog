class Post < ApplicationRecord
    has_many :comments
    validates :title, length: { maximum: 50 }
    validates :title, :content, presence: true
end
