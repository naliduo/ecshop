<?php
  $james=fopen("log.txt","a");

        fwrite($james,"1111111111111111111\r\n");
        fclose($james);
      echo 'hehe';
?>