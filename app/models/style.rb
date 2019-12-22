class Style < ApplicationRecord

    default_scope -> { order(created_at: :desc) }
    validates :caption,   presence: true, length:{ maximum: 50}
    validates :price,  length:{ maximum: 20}, format: /\A[0-9]+\z/

    validates :picture, presence: true
    mount_uploader :picture, StylePictureUploader
end
