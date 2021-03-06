class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # CHILD = ["1", "2", "3", "4", "5"]

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:facebook]


  has_many :annonces, dependent: :destroy
  has_many :bookings, dependent: :destroy

  # validates :email, presence: true
  # validates :encrypted_password, presence: true
  # validates :child_number, inclusion: {in: CHILD }

  def self.find_for_facebook_oauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email || "#{auth.info.first_name}.#{auth.info.last_name}@facebook.com"
      user.password = Devise.friendly_token[0,20]  # Fake password for validation
      user.first_name = auth.info.first_name
      user.last_name = auth.info.last_name
      user.picture = auth.info.image
      user.token = auth.credentials.token
      user.token_expiry = Time.at(auth.credentials.expires_at)
    end
  end
end



