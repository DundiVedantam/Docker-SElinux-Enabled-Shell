# Docker-SElinux-Enabled-Shell
docker build -t rbs_image_script .
docker exec -it <containerid> bash
docker-compose up -d
docker-compose exec rbs_image_script bash
docker-compose down

vi docker-entrypoint.sh
chmod 777 docker-entrypoint.sh 
docker build -t rbs_image_script .
