class Page < ActiveRecord::Base
     belongs_to :user
    validates :user,presence: true
   has_many :likes
   has_many :like_users, through: :likes, source: :user
 acts_as_votable
end
