CONTAINERS = $(shell docker ps -qa)

build:
	@docker build -t grafprom .

run:
	@docker run -p 3000:3000 -p 9090:9090  -d -t grafprom

clean: 
	@docker stop $(CONTAINERS)
	@docker rm $(CONTAINERS)
	@docker rmi grafprom

.PHONY: build run clean
