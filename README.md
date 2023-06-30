# **Formulario de votación**

Este proyecto es producto de una prueba técnica para postular a un trabajo y mi primer acercamiento a PHP. 

## **Requisitos previos**

__Las dependencias requeridas para este proyecto son:__

- PHP: versión 8.1.18 

- MariaDB: versión 10.4.28

- XAMPP versión 8.2.4-0 <details>


    <summary>Guía de instalación:</summary>
 

    <sub>Luego de descargar en este link: (https://www.apachefriends.org/es/index.html)</sub>
    
    <sub>Abrir la terminal en descargas y ponemos el siguiente comando: `sudo chmod +x ./xampp-linux-x64-8.2.4-0-installer.run`, luego ejecutamos sudo `./xampp-linux-x64-8.2.4-0-installer.run` y se abrirá una ventana donde solo debemos dar siguiente hasta terminar y cerrar.</sub>


    <sub>Para ejecutar la interfaz grafica se debe usar el siguiente comando: `sudo ./manager-linux-x64.run`, en la interfaz grafica, ir a 'Manage Servers/start all' y activar los tres campos (si la última no se activa, es que falta instalar lib, para eso, usa el siguiente comando: `sudo dnf install libnsl` y listo.</sub>

    <sub>Luego ir al navegador y poner la siguiente URL: (http://localhost/dashboard/phpMyAdmin)</sub>
 

    __Configuracion global:__

    <sub>Ingresar con: `sudo nano/etc/profile`, no tocar nada y bajar al final donde pondremos lo siguiente: `export PATH=”$PATH:/opt/lampp/bin`, volver al inicio y probar con este comando: `php —version`, si nos muestra la información es que ya esta configurado globalmente.</sub>


    __Para ingresar por la terminal:__

    <sub>`sudo chown -R usuario:grupos /opt/lampp/htdocs` (para saber cuál es tu usuario se usa: `whoami` y para ver los grupos: `groups usuario`)</sub>

        
    </details>


- Clonar el repositorio del proyecto 

    <details>


    <summary>Guía rápida:</summary>


    <sub>Abre una terminal o línea de comandos en tu sistema operativo y navega hasta el directorio donde deseas clonar el repositorio, ejecuta el siguiente comando: `git clone https://github.com/ndef10/formulario-votacion.git`</sub>


    </details>


-  Crear la base de datos y las tablas necesarias

    <details>


    <summary>Guía rápida:</summary>


    <sub>Script se encuentra en la carpeta SQL dentro del proyecto (se llama: formulario.sql)</sub>

    <sub>Con el servidor iniciado abre una terminal, en caso de no tener configurada una contraseña puedes usar el siguiente comando: `mysql -u root -p` (si tienes una contraseña configurada para el usuario "root", se te solicitará ingresarla después de ejecutar el comando)</sub>

    <sub>Una vez que estés conectado a la base de datos, puedes importar el script con el siguiente comando: `source /ruta/al/formulario.sql`
    (modificar la ruta dependiendo de su ubicación)</sub>

    </details>



- Configurar variables de entorno

    <details>


    <summary>Guía rápida:</summary>


    Se crearon variables de entorno con la libreria: vlucas/phpdotenv


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