<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Admin Puskesmas</title>

        <!-- Custom fonts for this template-->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="css/notification.css" rel="stylesheet">
    </head>
    <body>
    <div class="container">
        <div class="card">
            <div class="card-body">
                <?php
                    $current_suhu=$_SESSION['suhu'];
                    $current_saturasi=$_SESSION['saturasi'];
                    $current_detak=$_SESSION['detak'];
                    date_default_timezone_set("Asia/Jakarta");
                    $tanggal = date("Y-m-d H:i:s");
                    if ($current_suhu >= 38){ ?>
                        <div class="alert alert-danger">
                            <div class="row">
                                <div class="col-sm-2">
                                    <img src="img/danger.png" width="100" height="100">
                                </div>
                                <div class="col-sm-10">
                                    <strong>PERINGATAN !</strong>
                                    <br>
                                    <a>Suhu tubuh pasien <strong>Ali</strong> melebihi batas normal. Lihat sekarang !</a>
                                    <br>
                                    <a><?php echo"$tanggal";?></a>
                                    <br>
                                    <a href="index.php?content=dashboard.php" class="btn btn-info" role="button">Lihat Selengkapnya</a>
                                </div>
                            </div>
                        </div>
                    <?php }
                    if($current_saturasi < 94 && $current_saturasi != 0){ ?>
                        <div class="alert alert-danger">
                            <div class="row">
                                <div class="col-sm-2">
                                    <img src="img/danger.png" width="100" height="100">
                                </div>
                                <div class="col-sm-10">
                                    <strong>PERINGATAN !</strong>
                                    <br>
                                    <a>Kadar Saturasi Oksigen pasien <strong>Ali</strong> kurang dari batas normal. Lihat sekarang !</a>
                                    <br>
                                    <a><?php echo"$tanggal";?></a>
                                    <br>
                                    <a href="index.php?content=dashboard.php" class="btn btn-info" role="button">Lihat Selengkapnya</a>
                                </div>
                            </div>
                        </div>
                    <?php 
                    }
                    if($current_saturasi > 94 && $current_suhu < 38){ ?>
                        <div class="alert alert-info">
                            <div class="row">
                                <div class="col-sm-12">
                                    <center><a>Tidak ada peringatan</a></center>
                                </div>
                            </div>
                        </div>
                    <?php 
                    }
                    ?>
            </div>
        </div>
    </div>
    </body>
</html>