if Rails.env.production?
    CarrierWave.configure do |config|
      config.fog_credentials = {
        # Amazon S3用の設定
        :provider              => 'AWS',
        :region                => ENV['S3_REGION'],     # 例: 'ap-northeast-1'
        :aws_access_key_id     => ENV['S3_ACCESS_KEY'],
        :aws_secret_access_key => ENV['S3_SECRET_KEY']
      }
      config.fog_directory     =  ENV['S3_BUCKET']
      config.asset_host = 'https://static.salon-ratio.com'
    end

end

if Rails.env.test?
  CarrierWave.configure do |config|
    config.root = "/var/www/app"
    config.cache_dir = "/var/www/app/uploads/tmp"
  end
end