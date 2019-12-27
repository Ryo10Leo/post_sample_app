module ArticlesHelper

    def remove_not_used_cat

        not_used_cat = Category.not_used_cats

        if not_used_cat
            not_used_cat.destroy_all
        end
    end
end
