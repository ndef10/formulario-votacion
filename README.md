# **Formulario de votación**

Este proyecto es producto de una prueba técnica para postular a un trabajo y mi primer acercamiento a PHP. 

## **Requisitos previos**

__Las dependencias requeridas para este proyecto son:__

- PHP: versión 8.1.18 

- MariaDB: versión 10.4.28

- XAMPP versión 8.2.4-0 

## # Instalación

- Abre una terminal o línea de comandos en tu sistema operativo y navega hasta el directorio donde deseas clonar el repositorio, ejecuta el siguiente comando: `git clone https://github.com/ndef10/formulario-votacion.git`
Luego instala las dependencias requeridas para su funcionamiento ejecutando: `composer install`

-  Crear la base de datos y las tablas necesarias
Con el servidor iniciado abre una terminal, en caso de no tener configurada una contraseña puedess usar el siguiente comando: `mysql -u root -p` (si tienes una contraseña configurada para el usuario "root", se te solicitará ingresarla después de ejecutar el comando)
Una vez que estés conectado a la base de datos, puedes importar el script con el siguiente comando: `source /ruta/al/formulario.sql`
    (modificar la ruta dependiendo de su ubicación)


- Configurar variables de entorno
Debes crear un archivo .env en la raíz del proyecto con esta estructura:    

    -DB_SERVIDOR=localhost
    -DB_USUARIO=(tu usuario)
    -DB_CONTRASENIA=(tu contraseña)
    -DB_BASEDEDATOS=formulario



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