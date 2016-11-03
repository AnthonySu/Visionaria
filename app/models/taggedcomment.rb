class Taggedcomment < ActiveRecord::Base
  belongs_to :taggedpost
  belongs_to :user
end
