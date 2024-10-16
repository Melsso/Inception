name = inception
all:
	@echo "Launch config for  ${name}...\n"
	@bash srcs/requirements/wordpress/tools/make_dir.sh
	@docker-compose -f srcs/docker-compose.yml --env-file srcs/.env up -d

build:
	@echo "Building config for  ${name}...\n"
	@bash srcs/requirements/wordpress/tools/make_dir.sh
	@docker-compose -f srcs/docker-compose.yml --env-file srcs/.env up -d --build

down:
	@echo "Stopping config for ${name}...\n"
	@docker-compose -f srcs/docker-compose.yml --env-file srcs/.env down

re: down
	@echo "Rebuild config for ${name}...\n"
	@docker-compose -f srcs/docker-compose.yml --env-file srcs/.env up -d --build

clean: down
	@echo "Cleaning config for ${name}...\n"
	@docker system prune -a
	@sudo rm -rf ~/data/wordpress/*
	@sudo rm -rf ~/data/mariadb/*

fclean:
	@echo "Total clean of all configs docker\n"
	@docker stop $$(docker ps -qa)
	@docker system prune --all --force --volumes
	@docker network prune --force
	@docker volume prune --force
	@sudo rm -rf ~/data/wordpress/*
	@sudo rm -rf ~/data/mariadb/*
.PHONY	: all build down re clean fclean
