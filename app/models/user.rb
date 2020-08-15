class User < ApplicationRecord
  has_secure_password

  has_many :listings, dependent: :delete_all
  has_many :favourites
  has_many :favourite_listings, through: :favourites, source: :listing

  before_save { self.email = email.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze

  validates_presence_of :name, :email, :password_digest
  validates :name, length: { minimum: 3 }
  validates :password, length: { minimum: 6 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
end
