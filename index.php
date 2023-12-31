<!doctype html>
<html lang="en">

<head>
  <title>Formulario</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS v5.2.1 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

  <!--jquery 3.6.0-->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"
    integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

  <!-- Archivo CSS -->
  <link rel="stylesheet" href="styles.css">

</head>

<body>
  <div class="fondo">
    <main class="container">

      <h1 class="my-5">Formulario de votación</h1>
      <form id="datos_formulario" action="" method="POST">
        <div id="mensaje" class="mb-3"></div>

        <div class="mb-3 form-row align-items-center">
          <label for="nombre" class="col-auto col-form-label text-truncate pb-4 px-5">Nombre y apellido</label>
          <div class="col">
            <input type="text" name="nombre" id="nombre" class="form-control" placeholder="Ej: María Pino"
              aria-describedby="helpId" pattern="[A-Za-z]+\s[A-Za-z]+">
          </div>
        </div>

        <div class="mb-3 form-row align-items-center">
          <label for="alias" class="col-auto col-form-label text-truncate pb-4 px-5">Alias</label>
          <div class="col">
            <input type="text" name="alias" id="alias" class="form-control" placeholder="Ej: Maria23"
              aria-describedby="helpId" pattern="(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z0-9]{5,}">
          </div>
        </div>

        <div class="mb-3 form-row align-items-center">
          <label for="rut" class="col-auto col-form-label text-truncate pb-4 px-5">RUT</label>
          <div class="col">
            <input type="text" name="rut" id="rut" class="form-control" placeholder="Ej: 12123456-8"
              aria-describedby="helpId" pattern="\d{8}-[0-9kK]">
          </div>
        </div>

        <div class="mb-3 form-row align-items-center">
          <label for="email" class="col-auto col-form-label text-truncate pb-4 px-5">Email</label>
          <div class="col">
            <input type="email" name="email" id="email" class="form-control" placeholder="Ej: maria@gmail.com "
              aria-describedby="helpId" placeholder="Ej: maria@gmail.com" aria-describedby="helpId">
          </div>
        </div>

        <div class="form-row align-items-center">
          <label for="region" class="col-auto col-form-label text-truncate px-5">Región</label>
          <div class="col">
            <select id="region" name="region" class="form-select form-select-sm custom-height"
              aria-label=".form-select-sm example" pattern="(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z0-9]{5,}" onchange="buscar()">
              <option value="">Seleccione su Region</option>
              <?php include "regiones.php" ?>
            </select>
            <p id="comuna-error" class="error-message"></p>
          </div>
        </div>

        <div class="form-row align-items-center">
          <label for="comuna" class="col-auto col-form-label text-truncate pb-4 px-5">Comuna</label>
          <div id="div" class="col">
            <div>
              <select id="comuna" name="comuna" class="form-select form-select-sm custom-height"
                aria-label=".form-select-sm example" pattern="(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z0-9]{9,}">
                <option value="">Seleccione su Comuna</option>
              </select>
            </div>
          </div>
        </div>

        <div class="mb-3 form-row align-items-center">
          <label for="candidato" class="col-auto col-form-label text-truncate pb-4 px-5">Candidato</label>
          <div class="col">
            <select id="candidato" name="candidato" class="form-select form-select-sm custom-height"
              aria-label=".form-select-sm example" pattern="(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z0-9]{5,}">
              <option value="">Seleccione su Candidato</option>
              <?php include "candidatos.php"; ?>
            </select>
          </div>
        </div>

        <div id="div_encuesta" class="mb-3 form-row align-items-center">
          <label for="inputName" class="col-auto col-form-label text-truncate pb-4 px-5">Cómo se enteró de
            nosotros</label>
          <div id="div_encuesta" class="col">
            <label for="web">web</label>
            <input type="checkbox" value="web" name="encuesta[]" id="web">
            <label for="TV">TV</label>
            <input type="checkbox" value="TV" name="encuesta[]" id="TV">
            <label for="redes_sociales">Redes Sociales</label>
            <input type="checkbox" value="redes Sociales" name="encuesta[]" id="redes_sociales">
            <label for="amigo">Amigo</label>
            <input type="checkbox" value="amigo" name="encuesta[]" id="amigo">
            <div>
              <small id="encuesta"></small>
            </div>
          </div>
        </div>

        <div>
          <button type="submit" class="btn-votar">Votar</button>
        </div>

      </form>

    </main>

  </div>


  <!-- Bootstrap JavaScript Libraries -->
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
    integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
    </script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
    integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
    </script>

  <script src="app.js"></script>

</body>

</html>