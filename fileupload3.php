<?php

if (!function_exists("randomKeys")) {
    function randomKeys($length, $pattern = '')
    {
        $i = "";
        $key = "";
        $add = "";
        $strLength = 0;
        if (empty($pattern)) {
            $pattern = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        }
        $i = 0;
        $strLength = strlen($pattern) - 1;
        for ($i = 1; $i <= $length; $i++) {
            $add = $pattern[rand(0, $strLength)];
            if (empty($add)) {
                $add = $pattern[rand(0, $strLength)];
                $key .= $add;
            } else {
                $key .= $add;
            }
        }
        return $key;
    }
}

$res = $msg = '';
$target_dir = "images/career/";
$new_name = randomKeys(5) . '-' . $_FILES["myfile3"]["name"];
$target_file = $target_dir . $new_name;
$uploadOk = 1;
$imageFileType = pathinfo($target_file, PATHINFO_EXTENSION);

// Check if image file is a actual image or fake image
if (isset($_POST["myfile3"])) {
    $check = getimagesize($_FILES["myfile3"]["tmp_name"]);
    if ($check !== false) {
        $msg = "File is an valid - " . $check["mime"] . ".";
        $uploadOk = 1;
    } else {
        $msg = "File is  invalid.";
        $uploadOk = 0;
    }
}

// Check if file already exists
if (file_exists($target_file)) {
    $msg = "Sorry, file already exists.";
    $uploadOk = 0;
}

// Check file size
if ($_FILES["myfile3"]["size"] > 500000) {
    $msg = "Sorry, your file is too large.";
    $uploadOk = 0;
}

// Allow certain file formats
if ($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
    && $imageFileType != "gif" && $imageFileType != "pdf" && $imageFileType != "docx" && $imageFileType != "txt") {
    $msg = "Sorry, only JPG, JPEG, PDF, DOCX, TXT, PNG & GIF files are allowed.";
    $uploadOk = 0;
}
// Check if $uploadOk is set to 0 by an error
if ($uploadOk == 0) {
    $msg .= "Sorry, your file was not uploaded.";
// if everything is ok, try to upload file
} else {
    if (move_uploaded_file($_FILES["myfile3"]["tmp_name"], $target_file)) {
        $res = $new_name;
        $msg = "The file " . $new_name . " has been uploaded.";
    } else {
        $msg = "Sorry, there was an error uploading your file.";
    }
}

echo json_encode(array('msg' => $msg, 'filename' => $res));
