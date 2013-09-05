class software::media{
  require aptconf
  #Lets install spotify-preview from their preview
  package{'spotify':}
  
  #What do we want? NETFLIX!
  #When do we want it? NOW!
  package{'netflix-desktop':}
}
