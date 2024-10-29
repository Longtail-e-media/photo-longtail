<?php

$online = ($_SERVER['HTTP_HOST'] == "localhost" || $_SERVER['HTTP_HOST'] == "127.0.0.1" || $_SERVER['HTTP_HOST'] == "192.168.2.240") ? false : true;

defined('SITE_FOLDER')  ? '' : define('SITE_FOLDER', 'photo-longtail');
defined('SITE_STR')     ? '' : define('SITE_STR', '');

if ($online) { // ONLINE SETUP

    define('DB_SERVER', 'localhost');
    define('DB_USER',   'theanfac_longtaj2_photolt');
    define('DB_PASS',   'L0ngt@il22');
    define('DB_NAME',   'theanfac_longtaj2_photolt');

} else {    // LOCAL SETUP

    define('DB_SERVER', 'localhost');
    define('DB_USER',   'root');
    define('DB_PASS',   '');
    define('DB_NAME',   'photo_longtail');

}

?>
