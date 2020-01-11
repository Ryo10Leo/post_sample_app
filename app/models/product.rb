class Product < ApplicationRecord

    default_scope -> { order(created_at: :desc) }
    validates :name,        presence: true, length:{ maximum: 50}
    validates :price,       presence: true, length:{ maximum: 20}, format: /\A[0-9]+\z/

    validates :description, presence: true, length:{ maximum: 200}

    mount_uploader :picture, ProductPictureUploader
    validates :picture,     presence: true
end