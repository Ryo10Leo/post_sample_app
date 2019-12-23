class Article < ApplicationRecord
    default_scope -> { order(created_at: :desc) }
    validates :title,       presence: true, length:{ maximum: 50}
    validates :content,     presence: true

end
