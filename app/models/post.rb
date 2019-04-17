class Post < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: 140} #tweets can have maximum 140 chars.
  
  default scope -> { order(created_at: :desc)} #newest tweets come first
end
