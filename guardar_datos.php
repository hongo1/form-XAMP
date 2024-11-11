<?php
$host = 'localhost';
$user = 'root'; // Usuario por defecto
$password = ''; // Contraseña de MySQL (en XAMPP, normalmente está vacía)
$dbname = 'vigilancia';

// Crear conexión
$conn = new mysqli($host, $user, $password, $dbname);

// Verificar conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Obtener datos del formulario
$fecha = $_POST['fecha'];
$hora = $_POST['hora'];
$ubicacion = $_POST['ubicacion'];
$linea_transportista = $_POST['linea_transportista'];
$nombre_operador = $_POST['nombre_operador'];
$placas = $_POST['placas'];
$telefono = $_POST['telefono'];
$fecha_cita = $_POST['fecha_cita'] ?? NULL;
$hora_cita = $_POST['hora_cita'] ?? NULL;
$caja = $_POST['caja'];
$tipo_licencia = $_POST['tipo_licencia'];
$folio = $_POST['folio'] ?? NULL;
$descansado = isset($_POST['descansado']) ? 1 : 0;
$bebidas_alcoholicas = isset($_POST['bebidas_alcoholicas']) ? 1 : 0;
$cinturon_seguridad = isset($_POST['cinturon_seguridad']) ? 1 : 0;
$respetar_limites_velocidad = isset($_POST['respetar_limites_velocidad']) ? 1 : 0;
$cumple_epp = isset($_POST['cumple_epp']) ? 1 : 0;
$prueba_alcoholimetro = isset($_POST['prueba_alcoholimetro']) ? 1 : 0;
$vigencia_licencia = $_POST['vigencia_licencia'];

// Insertar datos en la tabla
$sql = "INSERT INTO formulario (fecha, hora, ubicacion, linea_transportista, nombre_operador, placas, telefono, 
    fecha_cita, hora_cita, caja, tipo_licencia, folio, descansado, bebidas_alcoholicas, cinturon_seguridad, 
    respetar_limites_velocidad, cumple_epp, prueba_alcoholimetro, vigencia_licencia) 
    VALUES ('$fecha', '$hora', '$ubicacion', '$linea_transportista', '$nombre_operador', '$placas', '$telefono', 
    '$fecha_cita', '$hora_cita', '$caja', '$tipo_licencia', '$folio', $descansado, $bebidas_alcoholicas, 
    $cinturon_seguridad, $respetar_limites_velocidad, $cumple_epp, $prueba_alcoholimetro, '$vigencia_licencia')";

if ($conn->query($sql) === TRUE) {
    echo "Datos guardados correctamente.";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
