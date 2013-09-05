class software::tools{
  $packages = ['apt',
               'git',
               'curl',
               'wget'
               ]
  packages{ $packages:}
}
