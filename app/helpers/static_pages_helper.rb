module StaticPagesHelper

    #記事の最初の画像を読み取りサムネイルにする
    def article_thumb(content)
        pattern = /<img.+src=[\'"]([^\'"]+)[\'"].*>/i
        image = content.match(pattern)
        if image
            image[0]
    #画像がなけれがデフォルト画像を取得
        else
            image_tag 'home/thumb_defalut.png'
        end
    end

    #記事内容のHTMLタグと空白を除去する
    def article_content(article)
        truncate(strip_tags(article.content).gsub("\u00A0", ""),length: 80)
    end

    #Googleカレンダー表示に必要な情報取得
    def set_google_calender
        gon.google_calender_API_key = ENV['GOOGLE_CALENDER_API_KEY']
        gon.calender_id_1 = ENV['CALENDER_ID_1']
        gon.calender_id_2 = ENV['CALENDER_ID_2']
    end
end
