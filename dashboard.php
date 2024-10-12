<?php
// الاتصال بقاعدة البيانات
include 'config.php';

// استعلام للحصول على عدد الزيارات
$stmt = $pdo->query('SELECT COUNT(*) as visit_count FROM visits');
$result = $stmt->fetch();
$visit_count = $result['visit_count'];

// استعلام للحصول على الدولة الأكثر زيارة
$stmt = $pdo->query('SELECT country, COUNT(*) as country_count FROM visits GROUP BY country ORDER BY country_count DESC LIMIT 1');
$result = $stmt->fetch();
$most_visited_country = $result['country'];

// استعلام للحصول على نوع الجهاز الأكثر استخدامًا
$stmt = $pdo->query('SELECT device_type, COUNT(*) as device_count FROM visits GROUP BY device_type ORDER BY device_count DESC LIMIT 1');
$result = $stmt->fetch();
$most_used_device = $result['device_type'];

// استعلام للحصول على كل تفاصيل الزيارات
$all_visits = $pdo->query('SELECT ip_address, country, device_type, browser, visit_time, referer FROM visits ORDER BY visit_time DESC');
?>

<!DOCTYPE html>
<html lang="ar">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>لوحة التحكم - إحصائيات الزيارات</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Cairo&display=swap" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Cairo', sans-serif;
            direction: rtl;
            text-align: right;
        }
        .card {
            margin-bottom: 20px;
            text-align: center;
        }
        .card-title {
            font-size: 1.3rem;
        }
        .table {
            background-color: #ffffff;
        }
        .icon {
            font-size: 2rem;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="container my-5">
        <h1 class="my-4 text-center">إحصائيات الزيارات</h1>
        <div class="row">
            <div class="col-md-4">
                <div class="card text-white bg-info mb-3">
                    <div class="card-body">
                        <i class="fas fa-chart-line icon"></i>
                        <h5 class="card-title">عدد الزيارات</h5>
                        <p class="card-text"><?php echo $visit_count; ?></p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card text-white bg-success mb-3">
                    <div class="card-body">
                        <i class="fas fa-globe icon"></i>
                        <h5 class="card-title">الدولة الأكثر زيارة</h5>
                        <p class="card-text"><?php echo $most_visited_country; ?></p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card text-white bg-warning mb-3">
                    <div class="card-body">
                        <i class="fas fa-mobile-alt icon"></i>
                        <h5 class="card-title">نوع الجهاز الأكثر استخدامًا</h5>
                        <p class="card-text"><?php echo $most_used_device; ?></p>
                    </div>
                </div>
            </div>
        </div>

        <h2 class="my-4 text-center">تفاصيل الزيارات</h2>
        <div class="table-responsive">
            <table class="table table-bordered table-striped">
                <thead class="thead-dark">
                    <tr>
                        <th>عنوان IP</th>
                        <th>الدولة</th>
                        <th>نوع الجهاز</th>
                        <th>نوع المتصفح</th>
                        <th>وقت الزيارة</th>
                        <th>الرابط</th>
                    </tr>
                </thead>
                <tbody>
                    <?php while ($visit = $all_visits->fetch()): ?>
                        <tr>
                            <td><?php echo htmlspecialchars($visit['ip_address']); ?></td>
                            <td><?php echo htmlspecialchars($visit['country']); ?></td>
                            <td><?php echo htmlspecialchars($visit['device_type']); ?></td>
                            <td><?php echo htmlspecialchars($visit['browser']); ?></td>
                            <td><?php echo htmlspecialchars($visit['visit_time']); ?></td>
                            <td><?php echo htmlspecialchars($visit['referer']); ?></td>
                        </tr>
                    <?php endwhile; ?>
                </tbody>
            </table>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>