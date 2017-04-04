class User < ApplicationRecord
  attr_accessor :first_name, :last_name, :email, :password

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :first_name, presence: true, length: {:maximum => 50}
  validates :last_name, presence: true, length: { :maximum => 50 }
  validates :email, presence: true, length: {maximum: 255},
            format: {with: email_regex},
            uniqueness: {case_sensitive: false}
  has_secure_password
  validates :password, presence: true, length: {minimum: 6}

  def User.digest(string)
    cost = Active::SecurePassword.min ? BCript::Engine::Min_COST :
          BCript::Password.create(string, cost: cost)
  end
  has_many :favourites
end
