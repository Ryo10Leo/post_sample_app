class Article < ApplicationRecord
    default_scope -> { order(created_at: :desc) }
    scope :from_category, -> (category_id)  { where(id: article_ids = ArticleCategory.where(category_id: category_id).select(:article_id))}
    scope  :recent_article, -> { limit(5) }
    validates :title,       presence: true, length:{ maximum: 50}
    validates :content,     presence: true

    has_many :article_categories, dependent: :destroy
    has_many :categories, through: :article_categories

    def save_categories(tags)
        current_tags = self.categories.pluck(:name) unless self.categories.nil?
        old_tags = current_tags - tags
        new_tags = tags - current_tags

        # Destroy old taggings:
        old_tags.each do |old_name|
          self.categories.delete Category.find_by(name:old_name)
        end

        # Create new taggings:
        new_tags.each do |new_name|
          article_category = Category.find_or_create_by(name:new_name)
          self.categories << article_category
        end
    end
end
