.PHONY: up run fresh_seed

up:
	@docker-compose up

run:
	@foreman start

reset:
	@rails db:reset

fresh_seed:
	@rails db:reset
	@rails db:seed