<?php
/* First Slideshow */
$reslide='';

$Records = Slideshow::getSlideshow_by(0);
// pr($Records);
// var_dump($Records); die();
if($Records) {
    $reslide.='';
        foreach($Records as $RecRow) {
            if(!empty($RecRow->image)){
                $file_path = SITE_ROOT.'images/slideshow/'.$RecRow->image;
                if(file_exists($file_path) and !empty($RecRow->image)) {
                    $reslide.='
                    <div class="item">
                    <h1>'.$RecRow->title.'</h1>
                   <p>Your partner in promotion</p>
            <img src="'.IMAGE_PATH.'slideshow/'.$RecRow->image.'" alt="'.$RecRow->title.'">
          </div>
    
                    
                    ';
    
                }
            }
          
        }
    $reslide.='';
}

$jVars['module:slideshow']= $reslide;
?>