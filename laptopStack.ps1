#$env:piaPassword = ""

$env:torrentPath = "D:\Torrents\Downloads"
$env:delugePath = "D:\Torrents\DelugeConfigs"
$env:timezonePath = ""
$env:piaUsername = "p9350801"
$env:optionalPiaClient = ""

docker stack deploy --compose-file docker-compose.yml torrentServer