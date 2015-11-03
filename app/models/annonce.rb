class Annonce < ActiveRecord::Base
  belongs_to :user

  # validates :user, presence: true
  # validates :name, presence: true
  # validates :adresse, presence: true
  # validates :price, presence: true
  # validates :child_number, presence: true
end
