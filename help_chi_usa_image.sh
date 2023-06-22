image_id=7b59cc533acd

docker images -a -q --filter since=$image_id |
xargs docker inspect --format='{{.Id}} {{.Parent}}'
