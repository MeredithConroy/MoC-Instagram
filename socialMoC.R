library('yaml')

social <- yaml.load_file("legislators-social-media.yaml.txt")

for(soc in social) {
  s <- sprintf("%s: %s", soc$id$bioguide, soc$social$instagram)
  print(s)
}
library('yaml')

social <- yaml.load_file("legislators-social-media.yaml.txt")

for(soc in social) {
  if(length(soc$social$instagram) > 0) {
    s <- sprintf("%s: %s", soc$id$bioguide, soc$social$instagram)
    print(s)
  } else {
    print(soc$id$bioguide)
  }
}
library('yaml')

social <- yaml.load_file("legislators-social-media.yaml.txt")

bio <- yaml.load_file("legislators-current.yaml.txt")

for(soc in social) {
  name = ""
  for(b in bio) {
    if(b$id$bioguide == soc$id$bioguide) {
      name = b$name$official_full
      break
    }
  }
  if(length(soc$social$instagram) > 0) {
    s <- sprintf("%s: %s", name, soc$social$instagram)
    print(s)
  } else {
    print(name)
  }
}
