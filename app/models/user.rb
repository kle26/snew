class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: %i[facebook]

  enum role: { dermatologo: 0, appassionato: 1 }.freeze

  has_many :prodottos
  has_many :reviews

  def self.from_omniauth(auth)
    user = User.where(email: auth.info.email).first
    user ||= User.create!(provider: auth.provider, uid: auth.uid, username: auth.info.name, email: auth.info.email, password: Devise.friendly_token[0, 20])
    user
  end
end
