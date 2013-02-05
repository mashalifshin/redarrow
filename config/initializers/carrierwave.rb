CarrierWave.configure do |config|
  config.root             = Rails.root.join('tmp')
  config.cache_dir        = 'uploads'

  config.storage          =  :fog
  config.fog_credentials  = {
    :provider                   => "AWS",
    :aws_access_key_id          => ENV['AWS_ACCESS_KEY_ID'],
    :aws_secret_access_key      => ENV['AWS_SECRET_ACCESS_KEY'],
  }
  
  config.fog_directory    = ENV['FOG_DIRECTORY']    # for cloudfront
end