<?php
include 'config.php';


$dsn = "mysql:host=$host;dbname=$db;charset=utf8mb4";
$options = [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
];

try {
    $pdo = new PDO($dsn, $user, $pass, $options);
} catch (PDOException $e) {
    die('فشل الاتصال بقاعدة البيانات: ' . $e->getMessage());
}

// تسجيل الزيارة
$ip_address = $_SERVER['REMOTE_ADDR'];
$browser = $_SERVER['HTTP_USER_AGENT'];
$device_type = 'Desktop'; // يمكنك استخدام مكتبة لتحليل الـ User Agent لتحديد نوع الجهاز
$referer = isset($_SERVER['HTTP_REFERER']) ? $_SERVER['HTTP_REFERER'] : 'غير معروف';
$country = 'غير معروف'; // استخدم API لجلب الدولة إذا لزم الأمر

try {
    $response = file_get_contents("http://ipinfo.io/{$ip_address}/json");
    if ($response !== false) {
        $ipinfo = json_decode($response);
        if (isset($ipinfo->country)) {
            $country = $ipinfo->country;
        }
    }
} catch (Exception $e) {
    // يمكن تجاهل الخطأ أو تسجيله
}

// تسجيل البيانات في قاعدة البيانات
$stmt = $pdo->prepare('INSERT INTO visits (ip_address, country, device_type, browser, referer) VALUES (?, ?, ?, ?, ?)');
$stmt->execute([$ip_address, $country, $device_type, $browser, $referer]);
?>