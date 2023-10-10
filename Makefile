current_dir = $(shell pwd)

pull_builder:
	docker pull namely/protoc-all

discord_proto:
	docker run --mount type=bind,source=$(current_dir)/discord,target=/defs namely/protoc-all -f discord.proto -l go
	docker run --mount type=bind,source=$(current_dir)/discord,target=/defs namely/protoc-all -f discord.proto -l php

health_proto:
	docker run --mount type=bind,source=$(current_dir)/health,target=/defs namely/protoc-all -f health.proto -l go
