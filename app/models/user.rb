class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # CHILD = ["1", "2", "3", "4", "5"]

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :annonce, dependent: :destroy
  has_many :bookings, dependent: :destroy

  # validates :email, presence: true
  # validates :encrypted_password, presence: true
  # validates :child_number, inclusion: {in: CHILD }
end



