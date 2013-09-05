class apt{
  include apt
  apt::ppa { 'ppa:gnome3-team/gnome3':}
  apt::source {'spotify':
    location => 'http://repository.spotify.com/',
    release => 'stable',
    repos => 'non-free',
    required_packages => 'debian-keyring debian-archive-keyring',
    key => '94558F59',
    key_server => 'keyserver.ubuntu.com'
  }
}
