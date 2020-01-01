module ArticlesHelper

    #記事で使わなくなったカテゴリーを全て削除
    def remove_not_used_cat

        not_used_cats = Category.not_used_cats

        not_used_cats.destroy_all if not_used_cats
    end

    #カテゴリと最新記事に必要な情報取得
    def get_aside_contents
        @recent_entries = Article.recent_article
        @categories = Category.all
    end
end
