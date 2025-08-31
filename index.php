<?php
include 'koneksi.php';

// Cek koneksi
if (!$conn) {
    file_put_contents("log.txt", "❌ Koneksi database gagal\n", FILE_APPEND);
    exit();
}

// Logging data webhook
file_put_contents("log.txt", file_get_contents("php://input") . PHP_EOL, FILE_APPEND);

// Ambil data dari Telegram
$content = file_get_contents("php://input");
$update = json_decode($content, true);

if (!isset($update["message"])) exit();

$message   = $update["message"];
$text      = strtolower(trim($message["text"]));
$chat_id   = $message["chat"]["id"];
$first     = $message["from"]["first_name"];
$last      = $message["from"]["last_name"] ?? '';
$full_name = trim($first . ' ' . $last);

// Waktu & hari
date_default_timezone_set("Asia/Makassar");
$hari_ini = date("l");
$hari_indo = [
    "Monday" => "Senin", "Tuesday" => "Selasa", "Wednesday" => "Rabu",
    "Thursday" => "Kamis", "Friday" => "Jumat", "Saturday" => "Sabtu", "Sunday" => "Minggu"
];
$hari = $hari_indo[$hari_ini];

// Log nama guru dan hari
file_put_contents("log.txt", "Nama: $full_name ($first) | Hari: $hari\n", FILE_APPEND);

// Jika pesan "jadwal saya"
if ($text == "jadwal saya") {
    $sql = "SELECT kelas, jam, mapel FROM jadwal 
            WHERE guru LIKE '%$first%' AND hari = '$hari' 
            ORDER BY jam ASC";
    $result = $conn->query($sql);

    if ($result && $result->num_rows > 0) {
        $res = "📅 *Jadwal Anda Hari $hari*:\n";
        while ($row = $result->fetch_assoc()) {
            $res .= "🕒 {$row['jam']} | {$row['mapel']} (Kelas {$row['kelas']})\n";
        }
    } else {
        $res = "❌ Tidak ada jadwal hari *$hari* untuk *$full_name*.";
    }

    sendMessage($chat_id, $res);
} else {
    $pesan = "Halo *$full_name*, ketik *jadwal saya* untuk melihat jadwal mengajar hari ini.";
    sendMessage($chat_id, $pesan);
}

// Kirim pesan ke Telegram
function sendMessage($chat_id, $text) {
    $token = "8001909360:AAGNFioyr83avYCjjwb8GswAKBiEVGMlJ5E";
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
