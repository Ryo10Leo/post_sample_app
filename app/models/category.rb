class Category < ApplicationRecord
    validates :name,presence:true,length:{maximum:50}
    has_many :article_categories, dependent: :destroy
    has_many :articles, through: :articles_categories

    def Category.not_used_cats
        categories = Category.arel_table
        article_categories = ArticleCategory.arel_table

        conditon =
            article_categories
                .project(article_categories[:category_id])
                .where(categories[:id].eq(article_categories[:category_id]))

        Category.where(conditon.exists.not).all
    end
end