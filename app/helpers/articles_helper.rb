module ArticlesHelper

    def remove_not_used_cat

        not_used_cats = Category.not_used_cats

        not_used_cats.destroy_all if not_used_cats
    end
end
