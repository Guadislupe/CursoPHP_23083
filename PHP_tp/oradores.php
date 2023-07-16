<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Oradores</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous"> 
    <link rel="stylesheet" href="style.css">

</head>
<body>
  <header>
    <nav class="navbar fixed-top bg-dark border-bottom border-bottom-dark" data-bs-theme="dark" >
      <div class="container" data-bs-theme="dark">
        <img src="img/codoacodo.png" height="75px">
        <a class="navbar-brand" href="index.html">Conferencia Buenos Aires</a>
        <a class="nav-link" href="index.html">La conferencia</a>
        <a class="nav-link" id="active" href="oradores.php">Los oradores</a>
        <a class="nav-link" href="#">Dónde y cuando</a>
        <a class="nav-link" href="#">Ser orador</a>
        <a class="nav-link" id="comprar" href="tickets.html">Comprar tickets</a>
      </div>
    </nav>
  </header>

  <main>
  <div class="flex-container">
    <div class="bloque"> <!--Bloque de oradores-->
      <table class="table table-hover">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">Título</th>
            <th scope="col">Nombre</th>
            <th scope="col">País</th>
            <th scope="col">Institución</th>
            </tr>
        </thead>
        <tbody>

        <?php

$conexion = mysqli_connect("85.10.205.173", "guadislupe23083", "350Guadalupe$", "php_23083");

$query = "SELECT * FROM oradores";
$consultas = mysqli_query($conexion, $query);

while($listadoOradores = mysqli_fetch_array($consultas)) {
    echo '<tr><th scope=""row">', $listadoOradores['id'], '</th><td>',$listadoOradores['tituloCharla'], '</td><td>', $listadoOradores['Nombre'], ' ', $listadoOradores['Apellido'], '</td><td>', $listadoOradores['Pais'], '</td><td>', $listadoOradores['Institucion'],'</td><tr>';
};

?>

      </tbody>
      </table> 
     </div>
     </div>
        
    
  </main>


    <!-- FOOTER -->
    <footer>
        <nav class="navbar bg-dark border-bottom border-bottom-dark" data-bs-theme="dark">
            <div class="container-fluid">


                <a class="nav-link" href="#">Preguntas frecuentes</a>
                <a class="nav-link" href="#">Contáctenos</a>
                <a class="nav-link" href="#">Prensa</a>
                <a class="nav-link" href="#">Conferencias</a>
                <a class="nav-link" href="#">Términos y condiciones</a>
                <a class="nav-link" href="#">Privacidad</a>
                <a class="nav-link" href="#">Estudiantes</a>
    
        </div>       
          </nav>
       
    </footer>

</div>
    <script src="tickets.js"> </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>