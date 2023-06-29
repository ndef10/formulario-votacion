# **Formulario de votacion**

Este proyecto es producto de una prueba técnica para postular a un trabajo en TI y mi primer acercamiento a PHP. 

## **Requisitos previos**

**1- Las dependencias requeridas para este proyecto son:**

- PHP: versión 8.1.18 

- MariaDB: versión 10.4.28

- XAMPP version 8.2.4-0 (En caso de no tener instalado XAMPP se puede descargar aqui: (https://www.apachefriends.org/es/index.html))

- Clonar el repositorio del proyecto desde GitHub: git clone https://github.com/ndef10/formulario-votacion.git

- Se crearon variables de entorno con la libreria: vlucas/phpdotenv

- El archivo se llama formulario-votacion y se creo en \xampp\htdocs, y está disponible en la siguiente URL: **`http://localhost/formulario-votacion`** 

-  Crear la base de datos y las tablas necesarias:

- Script se encuentra en la carpeta SQL dentro del proyecto

### Aqui una guía para importar es script

<details>
<summary>Mostrar más</summary>

Para importar un script SQL en una base de datos MariaDB, puedes seguir los siguientes pasos:

Asegúrate de tener instalado el sistema de gestión de base de datos MariaDB y de haber iniciado el servidor.

Abre una terminal o línea de comandos y accede al directorio donde se encuentra el archivo SQL que deseas importar.

Utiliza el comando mysql seguido de los parámetros necesarios para conectarte a la base de datos. Por ejemplo, si estás trabajando en localhost con el usuario "root" y sin contraseña, el comando sería:


mysql -u root -p
Si tienes una contraseña configurada para el usuario "root", se te solicitará ingresarla después de ejecutar el comando.

Una vez que estés conectado a la base de datos, puedes importar el script SQL utilizando el comando source seguido de la ruta completa del archivo SQL. Por ejemplo:


source /ruta/al/archivo.sql
Asegúrate de reemplazar /ruta/al/archivo.sql con la ruta correcta hacia tu archivo SQL.

El comando source ejecutará el script SQL y comenzará a importar las instrucciones y datos en la base de datos. Dependiendo del tamaño del archivo y la cantidad de instrucciones, esto puede llevar algún tiempo.

Una vez que el proceso de importación haya finalizado, recibirás un mensaje indicando que se ha importado correctamente.

Es importante tener en cuenta que al importar un script SQL, este puede contener instrucciones para crear tablas, insertar datos, definir relaciones y realizar otras operaciones relacionadas con la base de datos. Asegúrate de que el script SQL sea compatible con la versión de MariaDB que estás utilizando y que estés importando en la base de datos correcta.

Recuerda que es recomendable realizar una copia de seguridad de tu base de datos antes de realizar cualquier importación o modificación importante.

</details>



### Documentacion sobre como iniciar el servido XAMPP y configurar la base de datos MariaDB:

-Estas son mis notas personales para la instalacionen el sistema operativo Linux con la Distribucion Fedora 36:

### Para descargar xampp

<details>
<summary>Mostrar más</summary>

[Download XAMPP](https://www.apachefriends.org/download.html)

En terminal ir a Download con este comando: **cd Download**

listamos, para ver lo descargado con **ls**

ponemos el siguiente comando: **sudo chmod +x ./xampp-linux-x64-8.2.4-0-installer.run**

pedira clave root (el pc)

luego ejecutamos sudo **./xampp-linux-x64-8.2.4-0-installer.run**

y se abrira una ventana donde solo debemos dar siguiente hasta terminar y cerrar

los archivos descargados se guardan en: **cd /opt/lampp**

y al listar con **ls** podemos acceder a la carpeta **htdocs** aqui es donde se crearan los proyectos en php

para ejecutar la interfaz grafica se debe usar el sgte. comando: **sudo ./manager-linux-x64.run**

en la interfaz grafica, pichar en **Manage Servers, start all** y se tiene que poner **verde** las tres pelotitas, si la ultima no se pone roja, es que falta instalar lib y se hace con este comando: 

**sudo dnf install libnsl** 

para probar que xampp funciona, ir al navegador y poner la siguiente URL: http://localhost/dashboard/

en le link que dice **phpMyAdmin** es donde se trabaja normalmente y debe estar ok 

para poder crear carpetas aca hay que hacer la siguiente configuracion:

- **sudo chown -R Marce:Marce /opt/lampp/htdocs**
- para saber cual es nuestro usuario se usa; **whoami** 
- y para ver los grupos: **groups Marce**
- para crear un archivo: **touch hola.html**
- para editar el archivo: **nano hola.html** y adentro se puede escribir y grabar normalmente
- para ver lo editado en el navegador , voy a [localhost/hola.html](http://localhost/hola.html)
- con **dolphin .** voy a la interfaz grafica para crear archivos

En pampp, si voy a bin con cd bin puedo ver toda la lineas de comando y desde aca al poner el comando: **./php —version** obtengo la version que tengo instalada de php, para poder verla desde el inicio: 

- **sudo nano /etc/profile**

no tocar nada y bajar al final donde pondremos lo siguiente:

- **export PATH=”$PATH:/opt/lampp/bin”**

luego al ir al inicio de la terminal poner: source /etc/profile

y abajo poner: php —version podemos ver la version de php desde aca y termina la configuracion quedando en forma global
s
</details>



### **Tecnologías utilizadas**

- JavaScript
- PHP versión 8.1.18
- XAMPP versión 8.2.4-0
- MariaDB versión 10.4.28
- Bootstrap CSS v5.2.1
- Jquery 3.6.0 
- Git
- vlucas/phpdotenv ^5.5



### **Diseño**

El diseño de la interfaz se realizó apegandose al modelo otorgado por el futuro empleador y un poquito de contraste



### **Despliegue**

El proyecto solo se encuentra en local, con base de datos en MariaDB



### **Autor**

Nilda Marcela Defranchi Morales