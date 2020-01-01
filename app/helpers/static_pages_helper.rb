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

    def set_google_calender
        gon.google_calender_API_key = ENV['GOOGLE_CALENDER_API_KEY']
        gon.calender_id_1 = ENV['CALENDER_ID_1']
        gon.calender_id_2 = ENV['CALENDER_ID_2']
    end
end
