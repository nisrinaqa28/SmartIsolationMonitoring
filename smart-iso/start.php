<?php
    session_start();
    $_SESSION['username'] = null;
    $_SESSION['suhu'] = 0;
    $_SESSION['saturasi'] = 0;
    $_SESSION['detak'] = 0;

    
   $_SESSION['pasien'] = 'PS001';
    header('Location: login.php');
?>