# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
SampleApp::Application.initialize!


CarrierWave.configure do |config|
    config.fog_credentials = {
      provider:              'AWS',                        # required
      aws_access_key_id:     'abcdefg',                        # required
      aws_secret_access_key: '1234566778',                        # required
      region:                '*****',                  # optional, defaults to 'us-east-1'
    }
  end