class User < ApplicationRecord

    has_many :playlists

    validates :username, :password, presence: true
    validates :username, uniqueness: true
    validates :password, length: {in: 6..15, message: "is too short or too long!"}

    has_secure_password
end
