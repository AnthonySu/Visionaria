class Post < ActiveRecord::Base
    belongs_to :user
    has_many :comments
    has_many :likes
    has_many :liking_users, :through => :likes, :source => :user
    validates :content, :presence => true
end
