<?php
$host = "mysql.railway.internal";
$user = "root"; // Jika pakai XAMPP default
$pass = "root";
$db   = "railway"; // Ganti sesuai nama database kamu

$conn = new mysqli($host, $user, $pass, $db);

// Cek koneksi
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}
?>
