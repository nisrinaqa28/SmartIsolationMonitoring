<?php
    include "connect.php";
    include "alldata.php";
    //ini digunakan untuk grafik harian
    $grafik_suhu      = mysqli_query($conn, "SELECT * FROM tabel_suhu WHERE id_pasien='PS001'");
    $grafik_saturasi      = mysqli_query($conn, "SELECT * FROM tabel_saturasi WHERE id_pasien='PS001'");
    $grafik_detak      = mysqli_query($conn, "SELECT * FROM tabel_detak WHERE id_pasien='PS001'");

    //ini digunakan untuk grafik total suhu
    $grafik_suhu_total_07      = mysqli_query($conn, "SELECT * FROM tabel_suhu_total_07 WHERE id_pasien='PS001'");
    $grafik_suhu_total_19      = mysqli_query($conn, "SELECT * FROM tabel_suhu_total_19 WHERE id_pasien='PS001'");

    //ini digunakan untuk grafik total saturasi
    $grafik_saturasi_total_07      = mysqli_query($conn, "SELECT * FROM tabel_saturasi_total_07 WHERE id_pasien='PS001'");
    $grafik_saturasi_total_19      = mysqli_query($conn, "SELECT * FROM tabel_saturasi_total_19 WHERE id_pasien='PS001'");

    //ini digunakan untuk grafik total saturasi
    $grafik_detak_total_07      = mysqli_query($conn, "SELECT * FROM tabel_detak_total_07 WHERE id_pasien='PS001'");
    $grafik_detak_total_19      = mysqli_query($conn, "SELECT * FROM tabel_detak_total_19 WHERE id_pasien='PS001'");

    $id_alat = 'AL001';
    $id_pasien = 'PS001';
    $id_petugas = 'PT001';
    $tanggal = date("Y-m-d");
    date_default_timezone_set("Asia/Jakarta");
    $waktu = date("H:i:s");
    $nama_pasien = 'Budi';
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

//UPDATE TABEL TOTAL
    

?>

<!DOCTYPE html>
<html lang="en">
<html>
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

<!-- Page Heading -->
<div class="d-sm-flex align-items-center justify-content-between mb-4">
     <!-- <h1 class="h3 mb-0 text-gray-800">Nama Pasien : <?php echo $nama_pasien?></h1> -->
</div>


    <!-- Content Row -->

    <div class="row">
        <!-- <div class="col-xl-4 col-lg-5">
            <div class="card shadow mb-4"> -->
                <!-- Card Header - Dropdown -->
                <!-- <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Suhu Tubuh</h6>
                </div> -->
                <!-- Card Body -->
        <!--         <div class="card-body">
                    <p class="m-0 font-weight-bold text-primary text-center"  style="font-size: 40px;" id="suhu_pasien">0</p>
                </div>
            </div>
        </div> -->

        <!-- <div class="col-xl-4 col-lg-5">
            <div class="card shadow mb-4"> -->
                <!-- Card Header - Dropdown -->
              <!--   <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Kadar Saturasi Oksigen</h6>
                </div> -->
                <!-- Card Body -->
      <!--           <div class="card-body">
                    <p class="m-0 font-weight-bold text-primary text-center"  style="font-size: 40px;" id="saturasi_pasien">0</p>
                </div>
            </div>
        </div>     -->    

       <!--  <div class="col-xl-4 col-lg-5">
            <div class="card shadow mb-4"> -->
                <!-- Card Header - Dropdown -->
             <!--    <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Detak Jantung</h6>
                </div> -->
                <!-- Card Body -->
         <!--        <div class="card-body">
                    <p class="m-0 font-weight-bold text-primary text-center"  style="font-size: 40px;" id="detak_jantung_pasien"></p>
                </div>
            </div>
        </div> -->
        <!-- Area Chart -->
        <!-- <div class="col-xl-8 col-lg-7">
            <div class="card shadow mb-4"> -->
                <!-- Card Header - Dropdown -->
               <!--  <div
                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h6 class="m-0 font-weight-bold text-primary">Grafik Suhu Tubuh Harian</h6>
                </div> -->

         <!--        <div class="card-body">
                    <div class="chart-area">
                         <canvas id="linechart1"></canvas>
                    </div>
                </div>
            </div>
        </div> -->

        <!-- Area Chart -->
        <!-- <div class="col-xl-8 col-lg-7">
            <div class="card shadow mb-4"> -->
                <!-- Card Header - Dropdown -->
              <!--   <div
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
      <!--   <div class="col-xl-8 col-lg-7">
            <div class="card shadow mb-4"> -->
                <!-- Card Header - Dropdown -->
           <!--      <div
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

        <!-- Area Chart -->
        <div class="col-xl-8 col-lg-7">
            <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div
                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h6 class="m-0 font-weight-bold text-primary">Grafik Suhu 14 Hari</h6>
                </div>

                <div class="card-body">
                    <div class="chart-area">
                         <canvas id="linecharttotalsuhu"></canvas>
                    </div>
                </div>
            </div>
        </div>

        <!-- Area Chart -->
        <div class="col-xl-8 col-lg-7">
            <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div
                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h6 class="m-0 font-weight-bold text-primary">Grafik Saturasi 14 Hari</h6>
                </div>

                <div class="card-body">
                    <div class="chart-area">
                         <canvas id="linecharttotalsaturasi"></canvas>
                    </div>
                </div>
            </div>
        </div>

        <!-- Area Chart -->
        <div class="col-xl-8 col-lg-7">
            <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div
                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h6 class="m-0 font-weight-bold text-primary">Grafik Detak Jantung 14 Hari</h6>
                </div>

                <div class="card-body">
                    <div class="chart-area">
                         <canvas id="linecharttotaldetak"></canvas>
                    </div>
                </div>
            </div>
        </div>

    </div>
</html>



<script  type="text/javascript">
  /* var ctx1 = document.getElementById("linechart1").getContext("2d");
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
        }); */



  //AREA CHART GRAFIK TOTAL
  var ctxTotalSuhu = document.getElementById("linecharttotalsuhu").getContext("2d");
  var dataTotalSuhu = {
            labels: ["1","2","3","4","5","6","7","8","9","10","11","12","13","14"],
            datasets: [
                  {
                    label: "Suhu Jam 07.00",
                    fill: false,
                    lineTension: 0.1,
                    backgroundColor: "#29B0D0",
                    borderColor: "#29B0D0",
                    pointHoverBackgroundColor: "#29B0D0",
                    pointHoverBorderColor: "#29B0D0",
                    data: [<?php while ($p = mysqli_fetch_array($grafik_suhu_total_07)) { echo '"' . $p['hari1'] . '","' . $p['hari2'] . '","' . $p['hari3'] . '","' . $p['hari4'] . '","' . $p['hari5'] . '","' . $p['hari6'] . '","' . $p['hari7'] . '","' . $p['hari8'] . '","' . $p['hari9'] . '","' . $p['hari10'] . '","' . $p['hari11'] . '","' . $p['hari12'] . '","' . $p['hari11'] . '","' . $p['hari13'] . '","' . $p['hari14'] . '",';}?>]
                  },
                  {
                    label: "Suhu Jam 19.00",
                    fill: false,
                    lineTension: 0.1,
                    backgroundColor: "#2A516E",
                    borderColor: "#2A516E",
                    pointHoverBackgroundColor: "#2A516E",
                    pointHoverBorderColor: "#2A516E",
                    data: [<?php while ($p = mysqli_fetch_array($grafik_suhu_total_19)) { echo '"' . $p['hari1'] . '","' . $p['hari2'] . '","' . $p['hari3'] . '","' . $p['hari4'] . '","' . $p['hari5'] . '","' . $p['hari6'] . '","' . $p['hari7'] . '","' . $p['hari8'] . '","' . $p['hari9'] . '","' . $p['hari10'] . '","' . $p['hari11'] . '","' . $p['hari12'] . '","' . $p['hari11'] . '","' . $p['hari13'] . '","' . $p['hari14'] . '",';}?>]
                  }

                  ]
          };

  var ctxTotalSaturasi = document.getElementById("linecharttotalsaturasi").getContext("2d");
  var dataTotalSaturasi = {
            labels: ["1","2","3","4","5","6","7","8","9","10","11","12","13","14"],
            datasets: [
                  {
                    label: "Saturasi Jam 07.00",
                    fill: false,
                    lineTension: 0.1,
                    backgroundColor: "#29B0D0",
                    borderColor: "#29B0D0",
                    pointHoverBackgroundColor: "#29B0D0",
                    pointHoverBorderColor: "#29B0D0",
                    data: [<?php while ($p = mysqli_fetch_array($grafik_saturasi_total_07)) { echo '"' . $p['hari1'] . '","' . $p['hari2'] . '","' . $p['hari3'] . '","' . $p['hari4'] . '","' . $p['hari5'] . '","' . $p['hari6'] . '","' . $p['hari7'] . '","' . $p['hari8'] . '","' . $p['hari9'] . '","' . $p['hari10'] . '","' . $p['hari11'] . '","' . $p['hari12'] . '","' . $p['hari11'] . '","' . $p['hari13'] . '","' . $p['hari14'] . '",';}?>]
                  },
                  {
                    label: "Saturasi Jam 19.00",
                    fill: false,
                    lineTension: 0.1,
                    backgroundColor: "#2A516E",
                    borderColor: "#2A516E",
                    pointHoverBackgroundColor: "#2A516E",
                    pointHoverBorderColor: "#2A516E",
                    data: [<?php while ($p = mysqli_fetch_array($grafik_saturasi_total_19)) { echo '"' . $p['hari1'] . '","' . $p['hari2'] . '","' . $p['hari3'] . '","' . $p['hari4'] . '","' . $p['hari5'] . '","' . $p['hari6'] . '","' . $p['hari7'] . '","' . $p['hari8'] . '","' . $p['hari9'] . '","' . $p['hari10'] . '","' . $p['hari11'] . '","' . $p['hari12'] . '","' . $p['hari11'] . '","' . $p['hari13'] . '","' . $p['hari14'] . '",';}?>]
                  }

                  ]
          };

  var ctxTotalDetak = document.getElementById("linecharttotaldetak").getContext("2d");
  var dataTotalDetak = {
            labels: ["1","2","3","4","5","6","7","8","9","10","11","12","13","14"],
            datasets: [
                  {
                    label: "Detak Jantung Jam 07.00",
                    fill: false,
                    lineTension: 0.1,
                    backgroundColor: "#29B0D0",
                    borderColor: "#29B0D0",
                    pointHoverBackgroundColor: "#29B0D0",
                    pointHoverBorderColor: "#29B0D0",
                    data: [<?php while ($p = mysqli_fetch_array($grafik_detak_total_07)) { echo '"' . $p['hari1'] . '","' . $p['hari2'] . '","' . $p['hari3'] . '","' . $p['hari4'] . '","' . $p['hari5'] . '","' . $p['hari6'] . '","' . $p['hari7'] . '","' . $p['hari8'] . '","' . $p['hari9'] . '","' . $p['hari10'] . '","' . $p['hari11'] . '","' . $p['hari12'] . '","' . $p['hari11'] . '","' . $p['hari13'] . '","' . $p['hari14'] . '",';}?>]
                  },
                  {
                    label: "Detak Jantung Jam 19.00",
                    fill: false,
                    lineTension: 0.1,
                    backgroundColor: "#2A516E",
                    borderColor: "#2A516E",
                    pointHoverBackgroundColor: "#2A516E",
                    pointHoverBorderColor: "#2A516E",
                    data: [<?php while ($p = mysqli_fetch_array($grafik_detak_total_19)) { echo '"' . $p['hari1'] . '","' . $p['hari2'] . '","' . $p['hari3'] . '","' . $p['hari4'] . '","' . $p['hari5'] . '","' . $p['hari6'] . '","' . $p['hari7'] . '","' . $p['hari8'] . '","' . $p['hari9'] . '","' . $p['hari10'] . '","' . $p['hari11'] . '","' . $p['hari12'] . '","' . $p['hari11'] . '","' . $p['hari13'] . '","' . $p['hari14'] . '",';}?>]
                  }

                  ]
          };


  //Generate Grafik Total 
  var myBarChart4 = new Chart(ctxTotalSuhu, {
            type: 'line',
            data: dataTotalSuhu,
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

  var myBarChart5 = new Chart(ctxTotalSaturasi, {
            type: 'line',
            data: dataTotalSaturasi,
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

    var myBarChart6 = new Chart(ctxTotalDetak, {
            type: 'line',
            data: dataTotalDetak,
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