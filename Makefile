name = simple_nginx_html
all:
	@echo "Launch config for  ${name}...\n"
	@docker-compose -f ./docker-compose.yml up -d

build:
	@echo "Building config for  ${name}...\n"
	@docker-compose -f ./docker-compose.yml up -d --build

down:
	@echo "Stopping config for ${name}...\n"
	@docker-compose -f ./docker-compose.yml down

re:	down
	@echo "Rebuild config for ${name}...\n"
	@docker-compose -f ./docker-compose.yml up -d --build

clean: down
	@echo "Cleaning config for ${name}...\n"
	@docker system prune -a

fclean:
	@echo "Total clean of all configs docker\n"
	@docker stop $$(docker ps -qa)
	@docker system prune --all --force --volumes
	@docker network prune --force
	@docker volume prune --force

.PHONY	: all build down re clean fclean
