docker-build:
		docker build -t jperez3/hive:latest .

docker-run:
		docker run --name=hive -d -p 443:443 jperez3/hive:latest

docker-rm:
		docker rm hive && docker rmi jperez3/hive:latest
