This is my Puppet Configuration for initializing all the neat things I want for a ubuntu machine.

To apply, run:
```
sudo apt-get install git puppet ruby-hiera
mkdir -p ~/src/
cd ~/src
git clone --recursive https://github.com/kallekrantz/puppet-personal.git puppet-personal
cd puppet-personal
sudo puppet apply --modulepath ./modules/ manifests/site.pp
```
