<html>   
    <?php
        include "connect.php";
        $grafik_suhu      = mysqli_query($conn, "SELECT * FROM tabel_suhu WHERE id_pasien='PS001'");
        $grafik_saturasi      = mysqli_query($conn, "SELECT * FROM tabel_saturasi WHERE id_pasien='PS001'");
        $grafik_detak      = mysqli_query($conn, "SELECT * FROM tabel_detak WHERE id_pasien='PS001'");
        $id_alat = 'AL001';
        $id_pasien = 'PS001';
        $id_petugas = 'PT001';
        $tanggal = date("Y-m-d");
        date_default_timezone_set("Asia/Jakarta");
        $waktu = date("H:i:s");
        $nama_pasien = 'Ali';
        $current_suhu=$_SESSION['suhu'];
        $current_saturasi=$_SESSION['saturasi'];
        $current_detak=$_SESSION['detak'];
        $conn->query("INSERT INTO data_kesehatan (id_alat, id_pasien, id_petugas, tanggal, waktu, data_suhu_tubuh, data_kadar_saturasi, data_detak_jantung) VALUES ('$id_alat','$id_pasien','$id_petugas','$tanggal','$waktu','$current_suhu','$current_saturasi','$current_detak')");
        $waktu2 = date("H");

        if($waktu2 == 7){
            $conn->query("UPDATE tabel_suhu SET cek_suhu1 ='$current_suhu' WHERE id_pasien = '$id_pasien' ");
            $conn->query("UPDATE tabel_saturasi SET cek_saturasi1 ='$current_suhu' WHERE id_pasien = '$id_pasien' ");
            $conn->query("UPDATE tabel_detak SET cek_detak1 ='$current_suhu' WHERE id_pasien = '$id_pasien' ");
        }else if($waktu2== 19){
            $conn->query("UPDATE tabel_suhu SET cek_suhu2='$current_suhu' WHERE id_pasien = '$id_pasien' ");
            $conn->query("UPDATE tabel_saturasi SET cek_saturasi2 ='$current_suhu' WHERE id_pasien = '$id_pasien' ");
            $conn->query("UPDATE tabel_detak SET cek_detak2 ='$current_suhu' WHERE id_pasien = '$id_pasien' ");
        }

    ?>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="js/Chart.js"></script>

<!-- Page Script --> 
    <script type="text/javascript">
    $(document).ready(function(){
          setInterval(function (){
          $('#suhu_pasien').load('getCurrentSuhu.php');
        },1000);
        });
    </script>

<!-- Page Script --> 
    <script type="text/javascript">
    $(document).ready(function(){
          setInterval(function (){
          $('#saturasi_pasien').load('getCurrentSaturasi.php');
        },1000);
        });
    </script>

<!-- Page Script --> 
    <script type="text/javascript">
    $(document).ready(function(){
          setInterval(function (){
          $('#detak_jantung_pasien').load('getCurrentDetak.php');
        },1000);
        });
    </script>
    <link rel="stylesheet" href="css/bootstrap.css">
    <style>
        .table-striped>tbody>tr:nth-child(odd)>td, 
        .table-striped>tbody>tr:nth-child(odd)>th {
        background-color: darkslategray;
        }
    </style>
   <table class="table">
        	<thead class='thead-dark'>
        		<tr>
        			<th scope="col">No</th>
        			<th scope="col">Nama Pasien</th>
        			<th scope="col">Suhu Tubuh 07.00</th>
        			<th scope="col">Suhu Tubuh 19.00</th>
        			<th scope="col">Saturasi Oksigen 07.00</th>
        			<th scope="col">Saturasi Oksigen 19.00</th>
					<th scope="col">Detak Jantung 07.00</th>
        			<th scope="col">Detak Jantung 19.00</th>
        			<th scope="col">Detail</th>
        		</tr>
        	</thead>
        	<tbody>
            <?php
            //ambil data dari database
            $query="SELECT nama_pasien, cek_suhu1, cek_suhu2, cek_saturasi1, cek_saturasi2, cek_detak1, cek_detak2 FROM pasien, tabel_suhu, tabel_saturasi, tabel_detak WHERE pasien.id_pasien=tabel_suhu.id_pasien";
            $sql= mysqli_query($conn, $query) or die (mysqli_error($conn));
            $i = 0;
            while($a=mysqli_fetch_array($sql)){
                $i++;
                ?>
        		<tr>
        			<th ><?php echo $i?></th>
        			<th><?php echo $a['nama_pasien']?></th>
        			<th><?php echo $a['cek_suhu1']?>°C</th>
        			<th><?php echo $a['cek_suhu2']?>°C</th>
        			<th><?php echo $a['cek_saturasi1']?>%</th>
        			<th><?php echo $a['cek_saturasi2']?>%</th>
					<th><?php echo $a['cek_detak1']?> bpm</th>
        			<th><?php echo $a['cek_detak2']?> bpm</th>
        			<th><a href="index.php?content=dashboard.php"> View Detail</th>
        		</tr>
                <?php
            }
            ?>
        	</tbody>
        </table>
        <center>
        <a href="index.php?content=grafik_harian.php"><button>Tampilkan Grafik Harian</button></a> &emsp;  &emsp;  &emsp;
        <a href="index.php?content=grafik_total.php"><button>Tampilkan Grafik Total</button></a>
        </center>
         <!-- Area Chart -->
         <!-- <div class="col-xl-8 col-lg-7">
            <div class="card shadow mb-4"> -->
                <!-- Card Header - Dropdown -->
               <!--  <div
                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h6 class="m-0 font-weight-bold text-primary">Grafik Suhu Tubuh Harian</h6>
                </div>

                <div class="card-body">
                    <div class="chart-area">
                         <canvas id="linechart1"></canvas>
                    </div>
                </div>
            </div>
        </div>
 -->
        <!-- Area Chart -->
      <!--   <div class="col-xl-8 col-lg-7">
            <div class="card shadow mb-4"> -->
                <!-- Card Header - Dropdown -->
                <!-- <div
                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h6 class="m-0 font-weight-bold text-primary">Grafik Saturasi Oksigen Harian</h6>
                </div>

                <div class="card-body">
                    <div class="chart-area">
                         <canvas id="linechart2"></canvas>
                    </div>
                </div>
            </div>
        </div> -->

        <!-- Area Chart -->
        <!-- <div class="col-xl-8 col-lg-7">
            <div class="card shadow mb-4"> -->
                <!-- Card Header - Dropdown -->
               <!--  <div
                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h6 class="m-0 font-weight-bold text-primary">Grafik Detak Jantung Harian</h6>
                </div>

                <div class="card-body">
                    <div class="chart-area">
                         <canvas id="linechart3"></canvas>
                    </div>
                </div>
            </div>
        </div> -->
</html>

<script  type="text/javascript">
  var ctx1 = document.getElementById("linechart1").getContext("2d");
  var data1 = {
            labels: ["07.00","19.00"],
            datasets: [
                  {
                    label: "Suhu",
                    fill: false,
                    lineTension: 0.1,
                    backgroundColor: "#29B0D0",
                    borderColor: "#29B0D0",
                    pointHoverBackgroundColor: "#29B0D0",
                    pointHoverBorderColor: "#29B0D0",
                    data: [<?php while ($p = mysqli_fetch_array($grafik_suhu)) { echo '"' . $p['cek_suhu1'] . '","' . $p['cek_suhu2'] . '",';}?>]
                  }
                ]
          };


var ctx2 = document.getElementById("linechart2").getContext("2d");
  var data2 = {
            labels: ["07.00","19.00"],
            datasets: [
                  {
                    label: "Saturasi",
                    fill: false,
                    lineTension: 0.1,
                    backgroundColor: "#2A516E",
                    borderColor: "#2A516E",
                    pointHoverBackgroundColor: "#2A516E",
                    pointHoverBorderColor: "#2A516E",
                     data: [<?php while ($p = mysqli_fetch_array($grafik_saturasi)) { echo '"' . $p['cek_saturasi1'] . '","' . $p['cek_saturasi2'] . '",';}?>]
                  }
                ]
          };

    var ctx3 = document.getElementById("linechart3").getContext("2d");
    var data3 = {
            labels: ["07.00","19.00"],
            datasets: [
                  {
                    label: "Detak",
                    fill: false,
                    lineTension: 0.1,
                    backgroundColor: "#F07124",
                    borderColor: "#F07124",
                    pointHoverBackgroundColor: "#F07124",
                    pointHoverBorderColor: "#F07124",
                    data: [<?php while ($p = mysqli_fetch_array($grafik_detak)) { echo '"' . $p['cek_detak1'] . '","' . $p['cek_detak2'] . '",';}?>]
                  }
                ]
          };


  var myBarChart1 = new Chart(ctx1, {
            type: 'line',
            data: data1,
            options: {
            legend: {
              display: true
            },
            barValueSpacing: 20,
            scales: {
              yAxes: [{
                  ticks: {
                      min: 0,
                  }
              }],
              xAxes: [{
                          gridLines: {
                              color: "rgba(0, 0, 0, 0)",
                          }
                      }]
              }
          }
        });

  var myBarChart2 = new Chart(ctx2, {
            type: 'line',
            data: data2,
            options: {
            legend: {
              display: true
            },
            barValueSpacing: 20,
            scales: {
              yAxes: [{
                  ticks: {
                      min: 0,
                  }
              }],
              xAxes: [{
                          gridLines: {
                              color: "rgba(0, 0, 0, 0)",
                          }
                      }]
              }
          }
        });

  var myBarChart3 = new Chart(ctx3, {
            type: 'line',
            data: data3,
            options: {
            legend: {
              display: true
            },
            barValueSpacing: 20,
            scales: {
              yAxes: [{
                  ticks: {
                      min: 0,
                  }
              }],
              xAxes: [{
                          gridLines: {
                              color: "rgba(0, 0, 0, 0)",
                          }
                      }]
              }
          }
        });
</script>