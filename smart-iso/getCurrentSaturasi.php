<?php
  include('antares-php.php');
  $antares = new antares_php();
  $antares->set_key('d8afb51af7bfebc9:34ff2834e194b8a9');

  $limit = 1;
  $yourdata = $antares->get_limit($limit,'Sensor2', 'LatihanKonek');

  foreach ($yourdata as $key => $value) {
    $data=$value['spO2: '];

    if($data != ""){
      $_SESSION['saturasi'] = (int)$data;
      echo $data;
    }else{
      echo $_SESSION['saturasi'];
    }
  }
?>