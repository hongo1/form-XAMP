<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['id'])) {
    $id = $_POST['id'];

    // Obtener el registro actual
    $sql = "SELECT * FROM formulario WHERE id = $id";
    $result = $conn->query($sql);
    $row = $result->fetch_assoc();
}
?>

<form method="post" action="consultar_datos.php">
    <input type="hidden" name="id" value="<?= $row['id'] ?>">
    <input type="text" name="nombre_operador" value="<?= $row['nombre_operador'] ?>">
    <input type="date" name="fecha" value="<?= $row['fecha'] ?>">
    <!-- Añadir los demás campos del registro -->
    <button type="submit" name="edit" class="btn btn-success">Guardar cambios</button>
</form>
