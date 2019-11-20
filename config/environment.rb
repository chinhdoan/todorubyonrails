# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
ActionMailer::Base.smtp_settings = {

    :address        => 'smtp.sendgrid.net',

    :port           => '587',

    :authentication => :plain,

    :user_name      => 'chinhdoan',

    :password       => 'abc123456789',

    :domain         => 'https://chinhruby-todoapp.herokuapp.com',

    :enable_starttls_auto => true





}