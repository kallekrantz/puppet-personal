class software::tools{
  $packages = ['apt',
               'git',
               'curl',
               'wget'
               ]
  package{ $packages:}
}
