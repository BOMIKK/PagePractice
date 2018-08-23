class User < ActiveRecord::Base
  has_many :notes
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
           belongs_to :page
    has_many :likes
    has_many :like_pages, through: :likes, source: :page
     acts_as_voter
end
