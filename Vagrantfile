Vagrant::Config.run do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "lucid64"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  # config.vm.box_url = "http://domain.com/path/to/above.box"

  # Boot with a GUI so you can see the screen. (Default is headless)
  # config.vm.boot_mode = :gui

  # Assign this VM to a host only network IP, allowing you to access it
  # via the IP.
  config.vm.network "33.33.33.10"

  # Forward a port from the guest to the host, which allows for outside
  # computers to access the VM, whereas host only networking does not.
  # config.vm.forward_port "http", 80, 8080

  # Share an additional folder to the guest VM. The first argument is
  # an identifier, the second is the path on the guest to mount the
  # folder, and the third is the path on the host to the actual folder.
  # config.vm.share_folder "v-data", "/vagrant_data", "../data"
  config.vm.share_folder("v-root", "/vagrant", ".", :nfs => true)

  # Enable provisioning with chef solo, specifying a cookbooks path (relative
  # to this Vagrantfile), and adding some recipes and/or roles.
  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["drupal-quick-start/cookbooks", "rails-quick-start/cookbooks"]
    chef.roles_path = "rails-quick-start/roles"
    chef.data_bags_path = "rails-quick-start/data_bags"
    chef.add_recipe "solo_helper"
    chef.add_role "base"
    # chef.add_role "radiant_database_master"
    chef.add_role "radiant"
    # chef.add_role "radiant_run_migrations"
    # chef.add_recipe "radiant::db_bootstrap"
    # chef.add_role "radiant_load_balancer"
  end

end
