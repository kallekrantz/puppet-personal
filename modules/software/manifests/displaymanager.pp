class software::displaymanager{
  require aptconf
  $packages = ["gnome-shell",
               "ubuntu-gnome-desktop",
               "gnome-panel",
               "xmonad",
               "gdm"]
  package {$packages:}
  
  service {"gdm":
    ensure => running,
    enable => true,
    require => [Package['ubuntu-gnome-desktop'], Package['gdm']]
  }
  service {"lightgdm":
    enable => false,
    ensure => stopped
  }
  file {'/usr/share/gnome-session/sessions/xmonad.session':
    source => "puppet:///modules/software/xmonad/xmonad.session"
  }
  file {'/usr/share/xsessions/xmonad-gnome-session.desktop':
    source => "puppet:///modules/software/xmonad/xmonad-gnome-session.desktop"
  }
  file {'/usr/share/applications/xmonad.desktop':
    source => "puppet:///modules/software/xmonad/applications/xmonad.desktop"
  }
}
