class Band < ApplicationRecord
    belongs_to :playlist
    has_many :monsters
end
