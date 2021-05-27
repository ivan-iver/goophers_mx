# Presentaciones de golang

### Requerimientos

* [Golang](https://golang.org)
* [Present](https://godoc.org/golang.org/x/tools/cmd/present)

## Instalación

1. Instalar [golang](https://golang.org/doc/install#install)
2. Instalar [present](http://golang.org/x/tools/cmd/present):

	```console
	$ go get -v golang.org/x/tools/cmd/present
	Fetching https://golang.org/x/net/websocket?go-get=1
	Parsing meta tags from https://golang.org/x/net/websocket?go-get=1 (status code 200)
	get "golang.org/x/net/websocket": found meta tag 	get.metaImport{Prefix:"golang.org/x/net", VCS:"git", RepoRoot:"https://	go.googlesource.com/net"} at https://golang.org/x/net/websocket?go-get=1
	get "golang.org/x/net/websocket": verifying non-authoritative meta tag
	Fetching https://golang.org/x/net?go-get=1
	Parsing meta tags from https://golang.org/x/net?go-get=1 (status code 200)
	golang.org/x/net (download)
	golang.org/x/tools/godoc/golangorgenv
	golang.org/x/tools/godoc/static
	golang.org/x/tools/present
	golang.org/x/net/websocket
	golang.org/x/tools/playground
	golang.org/x/tools/playground/socket
	golang.org/x/tools/cmd/present
	```
3. Clonar el repositorio

	```console
	$ go get -v git@github.com:iver/meetups.git
	```

## Contenido

* 05/05/2015 [Pruebas unitarias con Ginkgo](/unit_testing): Que son las pruebas unitarias, ejemplos con `go test`, `ginkgo`, `gomega` y algunas buenas prácticas.
* 26/05/2015 [Go sin pretextos](/vagrant_golang): Como instalar `go`, la organización de los paquetes y el uso de [vagrant-golang](https://github.com/iver/vagrant-golang)
* 11/06/2018 [Unit Test Golang](https://github.com/iver/training_go): Pruebas unitarias. Presentación realizada con [hugo](https://gohugo.io/) (en Inglés)
* 31/07/2019 [Agilidad y despliegues](/pdf/AgilidadYDespliegues.pdf): Un poco de historia sobre agilidad y como impacta en nuestros despliegues.
