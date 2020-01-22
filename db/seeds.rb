Product.create(name: "すごいシャンプー",
               price: "3000",
               description: "どんな髪でもさらさらになる。",
               picture: File.open("#{Rails.root}/test/fixtures/default.jpg"))

Product.create(name: "すごい化粧品α",
                price: "5000",
                description: "乾燥肌に、めっちゃ効く",
                picture: File.open("#{Rails.root}/test/fixtures/product1.jpg"))

Product.create(name: "優しい乳液",
                price: "4500",
                description: "お肌に優しい！おすすめ！",
                picture: File.open("#{Rails.root}/test/fixtures/product2.jpg"))

Product.create(name: "オーガニックなトリートメント",
                price: "3000",
                description: "パサつきやすい髪にはこれ！",
                picture: File.open("#{Rails.root}/test/fixtures/product3.jpg"))

Product.create(name: "髪セットできちゃうんですβ",
                price: "800",
                description: "キープ力が桁違い！台風でも崩れません",
                picture: File.open("#{Rails.root}/test/fixtures/product4.jpg"))

Product.create(name: "なんかすごいトリートメント",
                price: "2500",
                description: "気になる髪になんかすごい成分配合のナンチャラが効く！",
                picture: File.open("#{Rails.root}/test/fixtures/product5.jpg"))

Style.create(caption: "カット&カラー",
                price: "5000",
                picture: File.open("#{Rails.root}/test/fixtures/model_sample1.jpg"))

Style.create(caption: "カット&カラー",
                price: "5000",
                picture: File.open("#{Rails.root}/test/fixtures/model_sample2.jpg"))

Style.create(caption: "カット&カラー",
                price: "5000",
                picture: File.open("#{Rails.root}/test/fixtures/model_sample3.jpg"))

Style.create(caption: "カット&カラー",
                price: "5000",
                picture: File.open("#{Rails.root}/test/fixtures/model_sample4.jpg"))

Style.create(caption: "カット&カラー",
                price: "5000",
                picture: File.open("#{Rails.root}/test/fixtures/model_sample5.jpg"))

Style.create(caption: "カット&カラー",
                price: "5000",
                picture: File.open("#{Rails.root}/test/fixtures/model_sample6.jpg"))

User.create(name: "Ryo Iwata", email: "ryo.bbl9@gmail.com",
                password: "mimuratoeregansu", password_confirmation: "mimuratoeregansu")
    
# User.create(name: ENV['USER_1_NAME'], email: ENV['USER_1_EMAIL'],
#             password: ENV['USER_1_PASSWORD'], password_confirmation: ENV['USER_1_PASSWORD_CONFIRMATION'])

# User.create(name: ENV['USER_2_NAME'], email: ENV['USER_2_EMAIL'],
#             password: ENV['USER_2_PASSWORD'], password_confirmation: ENV['USER_2_PASSWORD_CONFIRMATION'])


Article.create(title:"髪の豆知識",
               content: '<p><img alt="" src="/uploads/ckeditor/pictures/3/content_product5.jpg" /></p> <p>こちらがおすすめ！</p> <p>トリートメントは使いすぎ注意ですよ</p>')

Article.create(title: "新しいシャンプー入荷しました！",
               content: '<p><img alt="" src="/uploads/ckeditor/pictures/4/content_product6.jpg" /></p> <p>こちらXX社の新商品です！</p> <p>カラーをしていても、色落ちを抑えます！</p>')

Article.create(title:"台風に伴う臨時休業のお知らせ",
               content:'<p>&nbsp;</p> <p>&nbsp;</p> <p>レシオ美容室は台風〇〇号の接近に伴い、</p> <p>&nbsp;</p> <p>&nbsp;</p> <p>誠に勝手ながら本日から明後日〇〇日までの営業をお休みさせていただきます。</p> <p>&nbsp;</p> <p>&nbsp;</p> <p>&nbsp;</p>')

Article.create(title:"学割キャンペーン実施中！",
               content:'<p>&nbsp;</p> <p>&nbsp;</p> <p>みなさんこんにちわ！</p> <p>&nbsp;</p> <p>本日から〇〇月〇〇日まで高校生以下のお客様はお会計から10%割引いたします！</p> <p>&nbsp;</p> <p>ぜひレシオ美容室にお越しくださいませ。。。</p> <p>&nbsp;</p> <p>&nbsp;</p> <p>&nbsp;</p>')

Article.create(title:"価格変更のお知らせ",
               content:'<p>&nbsp;</p> <p>&nbsp;</p> <p>&nbsp;</p> <p>レシオ美容室は消費税増税に伴い、価格を一部変更いたします。</p> <p>&nbsp;</p> <p>これからもレシオ美容室をよろしくお願い申し上げます。。。</p> <p>&nbsp;</p> <p>&nbsp;</p> <p>&nbsp;</p>')

Category.create(name:"商品")
Category.create(name:"ratio.news")
Category.create(name:"お知らせ")
Category.create(name:"キャンペーン")

ArticleCategory.create(article_id:1,category_id:1)
ArticleCategory.create(article_id:2,category_id:1)
ArticleCategory.create(article_id:2,category_id:2)
ArticleCategory.create(article_id:2,category_id:3)
ArticleCategory.create(article_id:3,category_id:3)
ArticleCategory.create(article_id:4,category_id:2)
ArticleCategory.create(article_id:4,category_id:3)
ArticleCategory.create(article_id:4,category_id:4)
ArticleCategory.create(article_id:5,category_id:2)
ArticleCategory.create(article_id:5,category_id:3)



