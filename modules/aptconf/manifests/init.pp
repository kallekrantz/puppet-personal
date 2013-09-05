class aptconf{
  include apt
  #For the latest and greatest gnome
  apt::ppa { 'ppa:gnome3-team/gnome3':}
  #For the awesomeness that is netflix
  #(Don't hate me)
  apt::ppa { 'ppa:ehoover/compholio':}
  
  #I'd like a spotify repo with that netflix please please
  #Yes good sir, coming right up.
  apt::source {'spotify':
    location => 'http://repository.spotify.com/',
    release => 'stable',
    repos => 'non-free',
    required_packages => 'debian-keyring debian-archive-keyring',
    key => '94558F59',
    key_server => 'keyserver.ubuntu.com'
  }

  #Now I want some goody latest emacs thingies
  apt::ppa{'ppa:cassou/emacs':}
  
  #Also fishshell, the latest version (2.0!)
  apt::ppa{'ppa:zanchey/fishfish':}
}
