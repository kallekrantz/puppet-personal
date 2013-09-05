class software::dev{
  require aptconf
  $packages = ['emacs-snapshot-el',
               'emacs-snapshot-gtk',
               'emacs-snapshot']
  package{$packages:}
}
