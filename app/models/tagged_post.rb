class TaggedPost < ActiveRecord::Base
    validates :content, :presence => true
    validates :tag, :presence => true
    validates :category, :presence => true
end
