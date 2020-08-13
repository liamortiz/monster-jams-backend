class Playlist < ApplicationRecord
    belongs_to :user
    belongs_to :band
    has_many :sounds
end
