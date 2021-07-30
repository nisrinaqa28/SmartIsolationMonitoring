<?php include'connect.php' ?>

<html> 
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Profil Petugas Puskesmas</title>

        <!-- Custom fonts for this template-->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="css/index.css" rel="stylesheet">
    </head>

    <body>
    <div class="row justify-content-center">
            <div class="card o-hidden border-0 shadow-lg my-5">
                <div class="card-body p-5">
                    <div class="col-lg-0">
                        <div class="p-5">
                            <div class="text-center">
                                <h4 class="h5 text-gray-900">PROFILE PETUGAS PUSKESMAS</h4>
                                <hr>
                                <?php
                                    $sql = 'SELECT * FROM petugas_puskesmas';
                                    $result = $conn->query($sql);
                                    if ($result->num_rows > 0) {
                                        while ($row = $result->fetch_assoc()) { 
                                            $profile_image = "img/user.png";?>
                                            <img class="img-profile rounded-circle" src="<?php echo $profile_image;?>">
                                            <h1 class="h4 text-gray-900 mb-4"><?php echo $row['id_petugas']; ?></h1>
                                            <h1 class="h4 text-gray-900 mb-4"><?php echo $row['nama_petugas']; ?></h1>
                                            <h1 class="h4 text-gray-900 mb-4"><?php echo $row['no_telepon']; ?></h1>
                                        <?php
                                        }
                                    }
                                ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>