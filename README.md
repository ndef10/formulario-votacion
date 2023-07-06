# Formulario de votación

Interfáz que valida, permite emitir un voto y guardar la información ingresada en una base de datos.

(Este proyecto es producto de una prueba técnica para postular a un trabajo y mi primer acercamiento a PHP)

## Requisitos previos

__Antes de ejecutar el proyecto, es necesario tener instaladas las siguientes dependencias:__

- PHP: versión 8.1.18 

- MariaDB: versión 10.4.28

- XAMPP versión 8.2.4-0 

## Instalación

- __Abre una terminal o línea de comandos en tu sistema operativo y navega hasta el directorio donde deseas clonar el repositorio, ejecuta el siguiente comando:__
<div style="background-color: black; padding: 10px; border-radius: 10px;">
  <pre>
    <code>
      git clone https://github.com/ndef10/formulario-votacion.git
    </code>
  </pre>
</div>
Luego instala las dependencias requeridas para su funcionamiento ejecutando:
<div style="background-color: black; padding: 10px; border-radius: 10px;">
  <pre>
    <code>
      composer install
    </code>
  </pre>
</div>
Ingresa al proyecto
<div style="background-color: black; padding: 10px; border-radius: 10px;">
  <pre>
    <code>
      cd formulario-votacion
    </code>
  </pre>
</div>
Abrelo en VSC
<div style="background-color: black; padding: 10px; border-radius: 10px;">
  <pre>
    <code>
      code .
    </code>
  </pre>
</div>
El servidor estará disponible en (http://localhost/formulario-votacion)

- __Crea un archivo .env con las variables de entorno en la raíz del proyecto__

   <div style="background-color: black; padding: 10px; border-radius: 10px;">
  	<pre>
    	<code>
    	
	DB_SERVIDOR=localhost
	DB_CONTRASENIA=
	DB_CONTRASENIA=root
	DB_BASEDEDATOS=formulario	
    	</code>
  	</pre>
   </div>

- __Crea la base de datos y las tablas necesarias__

Abre XAMPP en tu sistema:
- Si estás en Linux: 
<div style="background-color: black; padding: 10px; border-radius: 10px;">
  <pre>
    <code>
      sudo /opt/lampp/manager-linux-x64.run
    </code>
  </pre>
</div>
- Si estas en windows:
<div style="background-color: black; padding: 10px; border-radius: 10px;">
  <pre>
    <code>
      C:\xampp\xampp-control.exe
    </code>
  </pre>
</div>

En la interfaz gráfica selecciona la pestaña que dice `Menage Servers` e inicia Apache MySQL y FTP con `Start All`

(En linux, si apache no cerró bien la última vez que lo usaste dará problemas, para solucionarlo, ejecuta este comando y vuelve a iniciar)
<div style="background-color: black; padding: 10px; border-radius: 10px;">
  <pre>
    <code>
      sudo killall httpd
    </code>
  </pre>
</div>


En tu navegador accede a la interfaz de phpMyAdmin (http://localhost/phpmyadmin)
Ve a importar selecciona el archivo desde tu sistema `aceptar` / `ejecutar` y recibirás una notificación de éxito.

## Tecnologías utilizadas

- JavaScript
- PHP versión 8.1.18
- XAMPP versión 8.2.4-0
- MariaDB versión 10.4.28
- Bootstrap CSS v5.2.1
- Jquery 3.6.0 
- Git
- vlucas/phpdotenv ^5.5

## Documentación

La documentacion se encuentra en el siguiente link: (https://app.swaggerhub.com/apis/MARCELADEFRAMCHI/formulario-votacion/1.0.0#/formulario/post_)

## Diseño

El diseño de la interfaz se realizó de acuerdo al modelo otorgado por el futuro empleador y un poquito de contraste

## Despliegue

El proyecto solo se encuentra en local, con base de datos en MariaDB


## Autor

Nilda Marcela Defranchi Morales