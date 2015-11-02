class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :annonce, dependent: :destroy
  has_many :bookings, dependent: :destroy

  # validates :email, presence: true
  # validates :encrypted_password, presence: true
end



