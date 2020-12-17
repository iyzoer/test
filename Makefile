ROOT_DIR=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
SRC_DIR=$(ROOT_DIR)/src
BIN_DIR=$(ROOT_DIR)/bin

include .env
-include .env.local

deps:
	@composer install

migrate: deps
	@php $(BIN_DIR)/console --no-ansi --no-interaction doctrine:migrations:migrate --allow-no-migration --env=$(APP_ENV)

run: migrate
	@php-fpm

js_deps:
	@cd assets && yarn install

watch: js_deps
	@cd assets && yarn watch
