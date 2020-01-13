# Shell-Admin-Docker

## Shell para Administrar Docker

  Dada que la lista de comandos que se deben escribir para administrar Docker o Docker Compose, 
he creado una serie de shell Linux que me facilitaron su administración o gestion de imagenes 
como de contenedores.

## Requisitos
  Algunas Shell tiene una respuesta grafica como resultado de la ejecución, por lo cual, es necesario
como requisito tener instalado Zenity, que es un generador de interfaces  graficas simples basado en 
librerias GTK.

###  Instalación:
```
* Debian / Ubuntu
sudo apt-get install -y zenity

* Otras Distribuciones basados en RedHat
yum install zenity

```
```
* Validar Zenity:
zenity --calendar
```

## Lista de Shell

* dc_bash.sh:
	Permite Graficamente ingresar modo comando en un Contenedor Docker.

* dc_ls.sh:
	Lista los Contenedores disponibles.

* dc_start.sh:
	Inicia el Servicio Docker Compose.

* dc_stop.sh:
	Detiene un Contenedor Docker en ejecución.

* dc_volumen.sh:
	Lista los Contenedores disponibles.

* dc_down.sh
	Detiene, Remueve, etc. de un Docker Compose.

* dc_ps.sh
	Lista Graficamente los Contenedores en ejecución.

* dc_StartContainer.sh
	Lista Graficamente los Contenedores disponibles para su iniciación.

* dc_StopContainer.sh
	Lista Graficamente los Contenedores en ejecución para su Detención.

* dc_update.sh 
	Crea, Re-Crea e Inicializa un Contenerdor Docker BackGround (docker-compose up -d).

* ip_docker.sh
	Lista Graficamente las IP's de los contenedores en ejecucicón.


SACACIngeniería
SACACI Chile


