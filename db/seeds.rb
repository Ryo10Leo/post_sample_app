Product.create(name: "グレートシャンプー",
               price: "1500",
               description: "どんな髪でもさらさらになる。",
               picture: File.open("#{Rails.root}/test/fixtures/files/product1.jpg"))

Product.create(name: "スキンケアクリームα",
                price: "5000",
                description: "乾燥肌に、めっちゃ効く",
                picture: File.open("#{Rails.root}/test/fixtures/files/product2.jpg"))

Product.create(name: "ヘアワックス",
                price: "1300",
                description: "スタイルキープ抜群！",
                picture: File.open("#{Rails.root}/test/fixtures/files/product3.jpg"))

Product.create(name: "スカルプシャンプー&トリートメント",
                price: "1500",
                description: "パサつきやすい髪にはこれ！",
                picture: File.open("#{Rails.root}/test/fixtures/files/product4.jpg"))

Product.create(name: "グッドヘアースプレー",
                price: "700",
                description: "キープ力が桁違い！台風でも崩れません",
                picture: File.open("#{Rails.root}/test/fixtures/files/product5.jpg"))

Product.create(name: "ハンドクリーム",
                price: "2500",
                description: "ベタつかない！気にならない！",
                picture: File.open("#{Rails.root}/test/fixtures/files/product6.jpg"))

Style.create(caption: "カット&カラー",
                price: "5000",
                picture: File.open("#{Rails.root}/test/fixtures/files/model_sample01.jpg"))

Style.create(caption: "カット",
                price: "2500",
                picture: File.open("#{Rails.root}/test/fixtures/files/model_sample02.jpg"))

Style.create(caption: "着付け＆メイク",
                price: "5000",
                picture: File.open("#{Rails.root}/test/fixtures/files/model_sample03.jpg"))

Style.create(caption: "カット",
                price: "1500",
                picture: File.open("#{Rails.root}/test/fixtures/files/model_sample04.jpg"))

Style.create(caption: "ヘアーアップ",
                price: "3500",
                picture: File.open("#{Rails.root}/test/fixtures/files/model_sample05.jpg"))

Style.create(caption: "カット&カラー",
                price: "8000",
                picture: File.open("#{Rails.root}/test/fixtures/files/model_sample06.jpg"))


User.create(name: ENV['USER_1_NAME'], email: ENV['USER_1_EMAIL'],
            password: ENV['USER_1_PASSWORD'], password_confirmation: ENV['USER_1_PASSWORD_CONFIRMATION'])

Article.create(title:"髪の豆知識",
               content: '<p>髪の強度は、どのくらいだと思いますか？</p><p><br />実は、髪の毛10本の束で、</p><p><br />1.5リットルのペットボトルを持ち上げるほどの強度があります。</p><p>&nbsp;</p>')

Article.create(title: "新しいシャンプー入荷しました！",
               content: '<p><img alt="" src="https://sample-post-image.s3-ap-northeast-1.amazonaws.com/shampoo-sample.png"></p> <p>こちらXX社の新商品です！</p> <p>カラーをしていても、色落ちを抑えます！</p>')

Article.create(title:"台風に伴う臨時休業のお知らせ",
               content:'<p>&nbsp;</p> <p>&nbsp;</p> <p>サンプル美容室は台風〇〇号の接近に伴い、</p> <p>&nbsp;</p> <p>&nbsp;</p> <p>誠に勝手ながら本日から明後日〇〇日までの営業をお休みさせていただきます。</p> <p>&nbsp;</p> <p>&nbsp;</p> <p>&nbsp;</p>')

Article.create(title:"学割キャンペーン実施中！",
               content:'<p>&nbsp;</p> <p>&nbsp;</p> <p>みなさんこんにちわ！</p> <p>&nbsp;</p> <p>本日から〇〇月〇〇日まで高校生以下のお客様はお会計から10%割引いたします！</p> <p>&nbsp;</p> <p>ぜひサンプル美容室にお越しくださいませ。。。</p> <p>&nbsp;</p> <p>&nbsp;</p> <p>&nbsp;</p>')

Article.create(title:"価格変更のお知らせ",
               content:'<p>&nbsp;</p> <p>&nbsp;</p> <p>&nbsp;</p> <p>サンプル美容室は消費税増税に伴い、価格を一部変更いたします。</p> <p>&nbsp;</p> <p>これからもサンプル美容室をよろしくお願い申し上げます。。。</p> <p>&nbsp;</p> <p>&nbsp;</p> <p>&nbsp;</p>')

Category.create(name:"商品")
Category.create(name:"salon.news")
Category.create(name:"お知らせ")
Category.create(name:"キャンペーン")

ArticleCategory.create(article_id:1,category_id:2)
ArticleCategory.create(article_id:2,category_id:1)
ArticleCategory.create(article_id:2,category_id:2)
ArticleCategory.create(article_id:2,category_id:3)
ArticleCategory.create(article_id:3,category_id:3)
ArticleCategory.create(article_id:4,category_id:2)
ArticleCategory.create(article_id:4,category_id:3)
ArticleCategory.create(article_id:4,category_id:4)
ArticleCategory.create(article_id:5,category_id:2)
ArticleCategory.create(article_id:5,category_id:3)



