# scd-familytree
A simple Rails app that manages the family tree for Sigma Chi Delta Fraternity at Cornell University. If you've made it to this repo, it means you're hoping to contribute to the code! :)

#### Dependencies
Please make sure you have downloaded the following before proceeding. You can check which versions you may have already installed by executing the commands below in your Terminal.
* [Virtualbox](https://www.virtualbox.org/wiki/Downloads) >= 4.3.26
    * `$ vboxmanage -v`   
* [Vagrant](https://www.vagrantup.com/downloads.html) >= 1.7.2
    * `$ vagrant -v` 
* [ChefDK](https://downloads.chef.io/chef-dk/) >= 0.6.0
    * `$ chef -v` 
* The text editor of your choice -- a popular one for Ruby apps is [Sublime](http://www.sublimetext.com/).

## Set up your local environment
Once you have installed the dependencies, open your Terminal and clone this repository to your Desktop (or anywhere that's easy to get to):

    $ git clone https://github.com/valerie-roske/scd-familytree.git
    $ cd scd-familytree

Next, from the root directory (/scd-familytree) execute the commands below:

    $ vagrant up
    $ vagrant ssh
    $ cd workspace
    $ bundle exec puma
You can then see the app on your browser at `http://localhost:4000`!

## Next Steps
For more information, here are some resources to get you started:
* [Rails Guides](http://guides.rubyonrails.org/getting_started.html)
* [Heroku Dev Center](https://devcenter.heroku.com/)

## Authors
Copyright 2015 Valerie Roske (@valerie-roske).

## License
MIT License (see [License](https://github.com/valerie-roske/scd-familytree/blob/master/LICENSE))
