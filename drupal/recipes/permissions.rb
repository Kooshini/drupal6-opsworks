## Recipe to create directories and set permissions for the Drupal files folder 
	node[:deploy].each do |app_name, deploy|
			directory "#{deploy[:deploy_to]}/current/sites/default/files" do 
			  mode 0777
			  owner 'deploy'
			  group 'apache'
			  recursive true
			  action :create
			end
	end
