<?php 
    include "conexion.php";
    $conexion = conexion();

    $sql = "SELECT *FROM modeloHard";
    $respuesta = mysqli_query($conexion, $sql);
?>
<html>
    <table border="1">
        <thead>
            <tr>
                <th>Usuario</th>
                <th>hardware</th>
                <th>asignación</th>
            </tr>
        </thead>
        <tbody>
            <?php while($ver = mysqli_fetch_array($respuesta)): ?>
            <tr>
                <td><?php echo $ver['usuario']; ?></td>
                <td><?php echo $ver['nombreHardware']; ?></td>
                <td><?php echo $ver['modelo']; ?></td>
            </tr>
            <?php endwhile; ?>
        </tbody>
    </table>