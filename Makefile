all:
	docker build . -t c9.em

push:
	docker tag c9.em toyoshim/c9.em-202007:latest
	docker push toyoshim/c9.em-202007:latest

run:
	docker run -d -p 8080:8080 c9.em


