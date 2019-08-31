$env:piaPassword = "{Password here}"

$env:torrentPath = "D:\Torrents\Downloads\"
$env:delugePath = "D:\Torrents\DelugeConfigs\"
$env:timezonePath = ""
$env:piaUsername = "p9350801"
$env:optionalPiaClient = ""

#docker stack deploy --compose-file docker-compose.yml torrentServer

#docker service create -d --replicas 1 -e "CONSUL_HTTP_ADDR=169.254.1.1:8500" -e "RUBY_ENVIRONMENT=qa3" --name notification_qa3 --with-registry-auth 432593804115.dkr.ecr.us-west-2.amazonaws.com/ruby/microservices/notification:2154b69c1

docker run -d `
-p 8112:8112 `
-p 1080:1080 `
--name vpn `
--dns=8.8.8.8 `
--cap-add=NET_ADMIN `
-v $env:torrentPath:/torrents `
-v $env:delugePath:/app/deluge `
-e DELUGE_UID=500 `
-e DELUGE_GID=500 `
-e HOST_SUBNET=192.168.1.0/24 `
-e PIA_USER=$env:piaUsername `
-e PIA_PASS=$env:piaPassword `
-e PIA_GATEWAY=piavpnaddress.com `
calv1npdx/torrent-server:latest