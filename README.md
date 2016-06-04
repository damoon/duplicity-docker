# duplicity in docker

this image is creating backups using duplicity

## backup data

    docker run --rm \
    -e SERVER=server.com -e USERNAME=backup-user -e PASSWORD=password123 -e NAME=mydata \
    -v /some/important/data:/data -v /cache/of/remote/data:/cache \
    -v /etc/localtime:/etc/localtime:ro -v /etc/timezone:/etc/timezone:ro -v /usr/share/zoneinfo:/usr/share/zoneinfo:ro -e TZ=`cat /etc/timezone` \
    davedamoon/duplicity

## list backups

    docker run --rm \
    -e SERVER=server.com -e USERNAME=backup-user -e PASSWORD=password123 -e NAME=mydata \
    -v /cache/of/remote/data:/cache \
    -v /etc/localtime:/etc/localtime:ro -v /etc/timezone:/etc/timezone:ro -v /usr/share/zoneinfo:/usr/share/zoneinfo:ro -e TZ=`cat /etc/timezone` \
    davedamoon/duplicity list

## restore

    docker run --rm \
    -e SERVER=server.com -e USERNAME=backup-user -e PASSWORD=password123 -e NAME=mydata \
    -v /restored/data:/restore -v /cache/of/remote/data:/cache \
    -v /etc/localtime:/etc/localtime:ro -v /etc/timezone:/etc/timezone:ro -v /usr/share/zoneinfo:/usr/share/zoneinfo:ro -e TZ=`cat /etc/timezone` \
    davedamoon/duplicity restore
