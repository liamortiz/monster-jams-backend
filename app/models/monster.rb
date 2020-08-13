class Monster < ApplicationRecord
    belongs_to :band
    has_one_attached :image

    validates :image, {
        presence: true
    }

    def get_image_url
        url_for(self.image)
    end
end
