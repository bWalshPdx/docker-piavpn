$env:torrentPath = "D:\Torrents\Downloads"
$env:delugePath = "D:\Torrents\DelugeConfigs"
$env:timezonePath = ""
$env:piaUsername = ""
#$env:piaPassword = ""
$env:optionalPiaClient = ""

docker stack deploy --compose-file docker-compose.yml torrentServer