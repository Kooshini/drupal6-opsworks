## Recipe to install the required and commonly used packages for Drupal
node[:deploy].each do |app_name, deploy|
	execute 'Update packages before install' do
		command 'sudo yum update'
	end
	# Required
	package 'php56'
	package 'php56-pdo'
	package 'php56-mcrypt'
	package 'php56-curl'
	package 'php56-json'
	package 'php56-bcmath'
	package 'php56-mbstring'
	# Common
	package 'ImageMagick'
	package 'php-pecl-imagick'
	
	# Restart apache2 after package installation
	service 'apache2' do
		action :restart
	end
end
