class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :annonce

  validates :user, presence: true
  validates :annonce, presence: true
  validates :start_at, presence: true
  validates :finish_at, presence: true

end



