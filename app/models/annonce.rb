class Annonce < ActiveRecord::Base
  belongs_to :user

 has_attached_file :picture,
    styles: { medium: "300x300>", thumb: "100x100>" }

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/
  # validates :user, presence: true
  # validates :name, presence: true
  # validates :adresse, presence: true
  # validates :price, presence: true
  # validates :child_number, presence: true

  geocoded_by :adresse
  after_validation :geocode, if: :adresse_changed?
end
