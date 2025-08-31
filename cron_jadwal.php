<?php
include 'koneksi.php';

date_default_timezone_set("Asia/Makassar");

$hari_ini = date("l");
$hari_indo = [
    "Monday" => "Senin",
    "Tuesday" => "Selasa",
    "Wednesday" => "Rabu",
    "Thursday" => "Kamis",
    "Friday" => "Jumat",
    "Saturday" => "Sabtu",
    "Sunday" => "Minggu"
];
$hari = $hari_indo[$hari_ini];

// Cek khusus untuk hari Minggu
if ($hari == "Minggu") {
    $pesan = "🎉😁✨ SELAMAT HARI LIBUR 🎉😁✨";
} else {
    $sql = "SELECT kelas, jam, mapel, guru FROM jadwal WHERE hari = '$hari' ORDER BY jam ASC";
    $result = $conn->query($sql);

    if ($result && $result->num_rows > 0) {
        $pesan = "📢 *Jadwal Mengajar Hari $hari*\n\n";
        while ($row = $result->fetch_assoc()) {
            $pesan .= "🧑‍🏫 {$row['guru']} | 🕒 {$row['jam']} | 📚 {$row['mapel']} | 🏫 Kelas {$row['kelas']}\n";
        }
    } else {
        $pesan = "❌ Tidak ada jadwal yang ditemukan untuk hari *$hari*.";
    }
}

sendToGroup($pesan);

function sendToGroup($text) {
    $token = "8001909360:AAGNFioyr83avYCjjwb8GswAKBiEVGMlJ5E";
    $chat_id = "-1002702335259"; // Ganti dengan ID grup kamu
    $url = "https://api.telegram.org/bot$token/sendMessage";

    $data = [
        'chat_id' => $chat_id,
        'text' => $text,
        'parse_mode' => 'Markdown'
    ];

    $options = [
        'http' => [
            'header'  => "Content-Type: application/x-www-form-urlencoded\r\n",
            'method'  => 'POST',
            'content' => http_build_query($data),
        ],
    ];

    $context = stream_context_create($options);
    file_get_contents($url, false, $context);
}
?>
