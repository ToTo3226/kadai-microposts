class Micropost < ApplicationRecord
  belongs_to :user
  
  has_many :okiniiris
  has_many :users, through: :okiniiris
  
  validates :content, presence: true, length: { maximum: 255 }
end
