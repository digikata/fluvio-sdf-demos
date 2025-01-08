
default:
	@echo "make start   - build and start the demo w/ docker compose"
	@echo "make stop    - stop the docker compose"
	@echo "make fresh-start - rebuild the dc images and start"
	@echo "make install - install the fluvio & sdf cli utilities"
	@echo "make studio  - show the local sdf studio UI"

# start the demo w/ docker compose
# docker compose restart data-generator-fluvio-client seems to sometimes be needed
start:
	docker compose up --detach
	echo Access 127.0.0.1:8000 to view the sdf studio ui
	echo Access 127.0.0.1:3001 to view the demo dashboard

stop:
	docker compose down -v

# after dockerfile updates, starting w/ --build may be required
# slow as this reubuilds images
# docker compose up --build --no-deps SERVICE may also be useful
fresh-start:
	docker compose up --build --detach

# Install sdf-beta5 locally as a client
install:
	curl -fsS "https://hub.infinyon.cloud/install/install.sh?ctx=ga-sdf-demo" | FLUVIO_VERSION=sdf-beta5 bash

# show graphical UI of the dataflow
studio:
	sdf deploy --ui
