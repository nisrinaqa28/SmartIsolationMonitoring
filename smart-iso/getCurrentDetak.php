<?php
  include('antares-php.php');
  $antares = new antares_php();
  $antares->set_key('d8afb51af7bfebc9:34ff2834e194b8a9');

  $limit = 1;
  $yourdata = $antares->get_limit($limit,'Sensor1', 'LatihanKonek');

  foreach ($yourdata as $key => $value) {
    $data=$value['bpm: '];

    if($data != ""){
      $_SESSION['detak'] = (int)$data;
      echo $data;
    }else{
      echo $_SESSION['detak'];
    }
  }
?>