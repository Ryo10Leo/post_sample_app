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



