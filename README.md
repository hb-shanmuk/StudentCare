StudentCare With TDD Approach
====

StudentCare is an sample student schedule management platform built by following the TDD approach.


## Setup StudentCare application in local

### Double-check your RVM installation
Please check the [RVM integration page](https://rvm.io/integration) for steps needed for your terminal or environment.

### Install the required ruby version using rvm

    rvm insall 2.1.1

### Run the bundle to install gems

    bundle install

### Configure config/database.yml as per local the database setup

    host: xxxxx
	username: xxxxx
	password: xxxxx

### Configure SMTP settings in config/application.rb 

	config.action_mailer.smtp_settings = {
		:address              => "smtp.gmail.com",
		:port                 => 587,
		:domain               => "gmail.com",
		:user_name            => "xyz@gmail.com",
		:password             => "yourpassword",
		:authentication       => :plain,
		:enable_starttls_auto => true
	}
	

### Run the Migrations for development and test environment

    rake db:migrate
    rake db:migrate RAILS_ENV=test
    
### Run the test cases with below command

	bundle exec rspec spec

### Start the server in development environment
	
	rails s

You should now be able to connect to rails on [http://localhost:3000](http://localhost:3000) - try it out!
