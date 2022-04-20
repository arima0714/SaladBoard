.PHONY: init_db
init_db:
	docker-compose run --rm flyway-clean
	docker-compose run --rm flyway-migrate

