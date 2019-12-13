class Product < ApplicationRecord

    default_scope -> { order(created_at: :desc) }
    validates :name,        presence: true, length:{ maximum: 50}
    validates :price,       presence: true, length:{ maximum: 20}
    validates :description, presence: true, length:{ maximum: 140}

    validates :picture, presence: true
    mount_uploader :picture, ProductPictureUploader
end