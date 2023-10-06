pull_builder:
	docker pull namely/protoc-all

discord_proto:
	docker run -v  ./discord:/defs namely/protoc-all -f discord.proto -l go
	docker run -v  ./discord:/defs namely/protoc-all -f discord.proto -l php

health_proto:
	docker run -v  ./health:/defs namely/protoc-all -f health.proto -l go
