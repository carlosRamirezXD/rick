<?php

// Configuración de la base de datos
$host = 'localhost';
$dbname = 'rick_and_morty';
$username = 'root';
$password = '';

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8mb4", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Conexión a la base de datos exitosa.\n";
} catch (PDOException $e) {
    die("Error de conexión: " . $e->getMessage());
}

// URL base de la API
$baseUrl = 'https://rickandmortyapi.com/api/character';

// Contadores
$totalRecordsNeeded = 150;
$recordsInserted = 0;
$page = 1;

// Preparar la sentencia SQL
$sql = "INSERT INTO personajes (id, name, status, species, type, gender, origin_name, location_name, image, created) 
        VALUES (:id, :name, :status, :species, :type, :gender, :origin_name, :location_name, :image, :created)
        ON DUPLICATE KEY UPDATE 
        name = VALUES(name), status = VALUES(status), species = VALUES(species), 
        type = VALUES(type), gender = VALUES(gender), origin_name = VALUES(origin_name), 
        location_name = VALUES(location_name), image = VALUES(image), created = VALUES(created)";

$stmt = $pdo->prepare($sql);

echo "Iniciando la importación de personajes...\n";

while ($recordsInserted < $totalRecordsNeeded) {
    $url = "$baseUrl?page=$page";
    echo "Consultando página $page ($url)...\n";

    $response = file_get_contents($url);

    if ($response === false) {
        die("Error al obtener datos de la API en la página $page.\n");
    }

    $data = json_decode($response, true);

    if (!isset($data['results'])) {
        echo "No se encontraron más resultados.\n";
        break;
    }

    foreach ($data['results'] as $character) {
        if ($recordsInserted >= $totalRecordsNeeded) {
            break;
        }

        // Formatear fecha
        $createdDate = date('Y-m-d H:i:s', strtotime($character['created']));

        try {
            $stmt->execute([
                ':id' => $character['id'],
                ':name' => $character['name'],
                ':status' => $character['status'],
                ':species' => $character['species'],
                ':type' => $character['type'],
                ':gender' => $character['gender'],
                ':origin_name' => $character['origin']['name'],
                ':location_name' => $character['location']['name'],
                ':image' => $character['image'],
                ':created' => $createdDate
            ]);
            
            $recordsInserted++;
            // echo "Insertado: " . $character['name'] . " (ID: " . $character['id'] . ")\n"; // Opcional: comentar para menos ruido

        } catch (PDOException $e) {
            echo "Error al insertar personaje ID " . $character['id'] . ": " . $e->getMessage() . "\n";
        }
    }

    // Verificar si hay más páginas
    if ($data['info']['next'] === null) {
        break;
    }

    $page++;
}

echo "Proceso finalizado. Se insertaron/actualizaron $recordsInserted registros.\n";

?>
