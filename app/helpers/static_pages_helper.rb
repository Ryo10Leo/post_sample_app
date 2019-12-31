module StaticPagesHelper

    def article_thumb(content)
        pattern = /<img.+src=[\'"]([^\'"]+)[\'"].*>/i
        image = content.match(pattern)
        if image
            image[0]
        else
            image_tag 'home/thumb_defalut.jpg'
        end
    end

    def article_content(article)
        truncate(strip_tags(article.content).gsub("\u00A0", ""),length: 80)
    end
end
