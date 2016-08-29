class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, omniauth_providers: [:facebook]

  def email_required?
      false
  end

  validates :username, presence: true, uniqueness: true,
          length: {minimum: 4, too_short: "tiene que tener al menos 4 caracteres"},
          format: {with: /\A[a-zA-Z0-9]+\z/, message: "sólo puede contener letras, números y guiones"}

  def self.find_or_create_by_omniauth(auth)
     user = User.where(provider: auth[:provider], uid: auth[:uid]).first

     unless user
        user = User.create(
               nombre: auth[:nombre],
               apellido: auth[:apellido],
               username: auth[:username],
               email: auth[:email],
               uid: auth[:uid],
               provider: auth[:provider],
               password: Devise.friendly_token[0,20]
        	)
     end
     user
  end 
end
