$env:torrentPath = ""
$env:delugePath = ""
$env:timezonePath = ""
$env:piaUsername = ""
#$env:piaPassword = ""
$env:optionalPiaClient = ""

docker stack deploy --compose-file docker-compose.yml torrentServer