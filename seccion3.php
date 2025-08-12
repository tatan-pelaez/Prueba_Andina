<?php

$host = "localhost";
$dbname = "andina";
$user = "root";
$pass = "";
$accion = $_GET['accion'] ?? '';
$pdo = obtenerConexion($host, $dbname, $user, $pass);
switch ($accion) {
    case 'listUser':
        echo json_encode(listarUsuarios($pdo), JSON_UNESCAPED_UNICODE);
        break;

    default:
        echo json_encode([
            "error" => "Función no se encuentra definida.",
            "detalle" => "La función " . $accion . " No existe dentro del archivo index.php",
            "codigo" => "404"
        ], JSON_UNESCAPED_UNICODE);
        break;
}

/**
 * Se realiza un switch case suponiendo que se van a generar mas endpoints o mas métodos
 * Listado de Errores
 *  Código 1045 => Corresponde a credenciales invalidas (usuario o password incorrecto)
 *  Código 2002 => Corresponde al host invalido
 *  Código 1049 => Corresponde al nombre de la base de datos invalida
 *  Código 42S02 => Corresponde a una tabla de a base de datos no existente
 *  Código 42S22 => Corresponde a una columna que no exista de una tabla
 */


/**
 * Función que permite obtener la conexión a la base de Datos
 * @param string $host Corresponde al servidor donde se encuentra el gestor de la base de datos
 * @param string $dbname Corresponde al nombre de la base de datos
 * @param string $user Corresponde al usuario con la cual se accede a la base de datos
 * @param string $pass Corresponde a la contraseña para acceder a la base de datos
 * @return PDO|array la funcion retorna el PDO de la conexión o en su defecto retorna la información del error
 */
function obtenerConexion(string $host, string $dbname, string $user, string $pass): PDO|array
{
    try {
        $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $pass);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $pdo;
    } catch (PDOException $e) {
        $codigo = $e->getCode();
        switch ($codigo) {
            case 1045:
                $mensaje = "Credenciales de base de datos inválidas.";
                break;
            case 2002:
                $mensaje = "No se pudo conectar al servidor de base de datos.";
                break;
            case 1049:
                $mensaje = "La base de datos no existe.";
                break;
            default:
                $mensaje = "Error de conexión a la base de datos.";
                break;
        }
        return [
            "error" => $mensaje,
            "detalle" => $e->getMessage(),
            "codigo" => $codigo
        ];
    }
}

/**
 * Función que nos permite listar los usuarios registrados los últimos 30 días
 * @param PDO|array $pdo Conexión PDO o array de error.
 * @return array Lista de usuarios o información de error.
 */
function listarUsuarios(PDO|array $pdo): array
{
    if (!($pdo instanceof PDO)) {
        return $pdo;
    }
    try {
        $stmt = $pdo->query("SELECT id, nombre, correo, fecha_registro FROM usuarios WHERE fecha_registro >= DATE_SUB(CURDATE(), INTERVAL 30 DAY) ORDER BY fecha_registro DESC");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    } catch (PDOException $e) {
        $codigo = $e->getCode();
        switch ($codigo) {
            case "42S02":
                $tabla = str_replace("SQLSTATE[42S02]: Base table or view not found: 1146 Table '", '', $e->getMessage());
                $tabla = str_replace("' doesn't exist", '', $tabla);
                $mensaje = "Tabla " . $tabla . " no Existe.";
                break;
            case "42S22":
                $columna = str_replace("SQLSTATE[42S22]: Column not found: 1054 Unknown column '", '', $e->getMessage());
                $columna = str_replace("' in 'field list'", '', $columna);
                $mensaje = "La columna " . $columna . " no Existe.";
                break;
            default:
                $mensaje = "Error al traer usuarios.";
                break;
        }
        return [
            "error" => $mensaje,
            "detalle" => $e->getMessage(),
            "codigo" => $e->getCode()
        ];
    }
}
