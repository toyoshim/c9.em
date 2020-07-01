all:
	docker build . -t c9.em

run:
	docker run -d -p 8080:8080 c9.em


