CarrierWave.configure do |config|
  # To make uploads across form redisplays work on heroku, the following two lines
  config.root = Rails.root.join('tmp')
  config.cache_dir = 'carrierwave'
 
  config.fog_credentials = {
    :provider                   => "AWS",
    :aws_access_key_id          => ENV['AWS_ACCESS_KEY_ID'],
    :aws_secret_access_key      => ENV['AWS_SECRET_ACCESS_KEY'],
  }
  
  config.fog_directory  = ENV['FOG_DIRECTORY']    # for cloudfront
  config.fog_public     = false                   # optional, defaults to true

end