if defined?(AssetSync)
  AssetSync.configure do |config|
    config.fog_provider = 'AWS'
    config.fog_directory = ENV['FOG_DIRECTORY']
    config.aws_access_key_id = ENV['AWS_ACCESS_KEY_ID']
    config.aws_secret_access_key = ENV['AWS_SECRET_ACCESS_KEY']

    # Don't delete files from the store
    config.existing_remote_files = 'keep'

    # Automatically replace files with their equivalent gzip compressed version
    config.gzip_compression = true
  end
end