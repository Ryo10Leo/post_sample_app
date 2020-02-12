# 美容室向け「記事」「スタイル」「商品」コンテンツ投稿機能付きサンプルサイト

[ポートフォリオサイト](https://salon-ratio.com)で使われている機能をサンプルサイトで一部公開。

こちらのソースでできた[サンプルサイト](https://postsampleapp.herokuapp.com/)では、投稿機能をお試しできます。

ポートフォリオの詳細な解説記事は[こちら](https://ryo10leo.hatenablog.com/entry/2020/02/02/204150)

## 機能一覧
- ログイン機能( Remember me 機能付 )
- コンテンツ一覧動的表示機能( *.html.erb )
- コンテンツモーダルウィンドウ表示( CSS, jQuery )
- 「スタイル」「商品」コンテンツ投稿、編集機能( Ajax通信, CarrirWave, 画像アップロード先 S3)
- 「スタイル」「商品」コンテンツ削除機能
- 「記事」コンテンツ投稿、編集機能( Ajax通信, CarrirWave, ckeditor, 画像アップロード先 S3 )
- 「記事」コンテンツ削除機能
- サイドバー最新記事5件動的表示( scope )
- 「記事」カテゴリー機能( UI/Tagit )
- サイドバーカテゴリー動的表示
- 未使用カテゴリー自動削除機能( 記事更新時にSQLで未使用のカテゴリを抽出して、 DBから削除 )
- ページネーション機能( will_pagenate )
 Docker, docker-composeを使った開発環境構築( Nginx, Puma, PostgreSQL )
- レスポンシブデザイン
