class software::displaymanager{
  require aptconf
  $packages = ["gnome-shell",
               "ubuntu-gnome-desktop",
               "gnome-panel",
               "xmonad",
               "gdm"]
  package {$packages:}
  
  file {'/usr/share/gnome-session/sessions/xmonad.session':
    source => "puppet:///modules/software/displaymanager/xmonad.session"
  }
  file {'/usr/share/xsessions/xmonad-gnome-session.desktop':
    source => "puppet:///modules/software/displaymanager/xmonad-gnome-session.desktop"
  }
  file {'/usr/share/applications/xmonad.desktop':
    source => "puppet:///modules/software/displaymanager/xmonad/applications/xmonad.desktop"
  }
  file {'/etc/X11/default-display-manager':
    source => "puppet:///modules/software/displaymanager/default-display-manager"
  }
}
