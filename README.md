# **Formulario de votación**

Este proyecto es producto de una prueba técnica para postular a un trabajo y mi primer acercamiento a PHP. 

## **Requisitos previos**

**1- Las dependencias requeridas para este proyecto son:**

- PHP: versión 8.1.18 

- MariaDB: versión 10.4.28

- XAMPP version 8.2.4-0 
(En caso de no tener instalado XAMPP se puede descargar aqui: (https://www.apachefriends.org/es/index.html))


<details>


<summary>Guía de instalación:</summary>

Luego de descargar ir a la terminal/Download

ponemos el siguiente comando: **sudo chmod +x ./xampp-linux-x64-8.2.4-0-installer.run** 

luego ejecutamos sudo **./xampp-linux-x64-8.2.4-0-installer.run**

y se abrirá una ventana donde solo debemos dar siguiente hasta terminar y cerrar.

para ejecutar la interfaz grafica se debe usar el sgte. comando: **sudo ./manager-linux-x64.run**

en la interfaz grafica, ir a **Manage Servers/start all** y activar los tres campos
(si la última no se activa, es que falta instalar lib, para eso, usa el siguiente comando:**sudo dnf install libnsl** y listo.

Para probar que XAMPP funciona, ir al navegador y poner la siguiente URL: http://localhost/dashboard/

ingresando a **phpMyAdmin** encontramos nuestro lugar de trabajo 


Configuracion global:

Ingresar con: **sudo nano /etc/profile**

no tocar nada y bajar al final donde pondremos lo siguiente: **export PATH=”$PATH:/opt/lampp/bin”**

volver al inicio y probar con este comando: **php —version**, si nos muestra la información es que ya esta configurado globalmente.


Para ingresar por la terminal:

- **sudo chown -R usuario:grupos /opt/lampp/htdocs**
(para saber cuál es tu usuario se usa: **whoami** y para ver los grupos: **groups usuario**)

con **dolphin .** ingresamos a la interfáz gráfica

</details>


- Clonar el repositorio del proyecto desde GitHub: git clone https://github.com/ndef10/formulario-votacion.git

- Se crearon variables de entorno con la libreria: vlucas/phpdotenv

- El archivo se llama formulario-votacion y se creo en \xampp\htdocs, y está disponible en la siguiente URL: **`http://localhost/formulario-votacion`** 

-  Crear la base de datos y las tablas necesarias:

- Script se encuentra en la carpeta SQL dentro del proyecto

Aqui una guía para importar es script

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