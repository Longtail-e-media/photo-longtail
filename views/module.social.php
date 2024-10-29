<?php
/*
* Top Social Links
*/
$socialRec = SocialNetworking::find_social();
$siteRegulars = Config::find_by_id(1);
$resocl = '';
$disicon='';


if (!empty($socialRec)) {
    foreach ($socialRec as $socialRow) {
        $icon= $socialRow->image;
        
if(!empty($icon)){
    $disicon .='
    <li><a href="' . $socialRow->linksrc . '"><img src="'.IMAGE_PATH.'social/' . $socialRow->image . '"/></a></li>';
}
else{
    $disicon .='
    <li><a href="' . $socialRow->linksrc . '" target="_blank"><i class="fa-brands '.$socialRow->icon.' "></i></a></li>';

}
        
        
    }
    $resocl .= '
        <div class="social_icons">
        <ul class="list-unstyled d-flex gap-3 justify-content-center">
        '.$disicon.'
        </ul>
      </div>
        ';
}

$jVars['module:socilaLinkbtm'] = $resocl;


/*
* Home social link
*/
$ressl = '';
if (!empty($socialRec)) {
    foreach ($socialRec as $socialRow) {
        $ressl .= ' <a href="' . $socialRow->linksrc . '" target="_blank"><i class="fa ' . $socialRow->image . '"></i></a>';
    }
}

$jVars['module:socilaLinktop'] = $ressl;

$otaRec = ota::getotaNetwork();
$ota = '';
if (!empty($otaRec)) {
    foreach ($otaRec as $otaRow) {
        $ota .= ' 
        <div class=" col-lg-2 col-md-2 col-5">
       <img src="'.IMAGE_PATH.'ota/' . $otaRow->image . '" alt="" class="ota_'.$otaRow->title.'">
     </div>';
    }
}

$jVars['module:otatop'] = $ota;

$detect = new Mobile_Detect;

$ret = '';

// Any mobile device.
if ($detect->isMobile() && !$detect->isTablet()) {
    $ret .= '<div class="mobile-fb text-center"><iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fambassadornepal&tabs=timeline&width=330&height=400&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId" frameborder="0" scrolling="yes" style="border: white;float:none;margin:auto; overflow: hidden; height: 350px; width: 330px;max-width:100%;background:#fafafa;color:000;"></iframe></div>';
} else {
    $ret .= '<style type="text/css"> .theblogwidgets{background: url("images/fbwidget.png") no-repeat scroll left center transparent !important; float: right;height: 350px;padding: 0 5px 0 34px;width: auto;z-index:  99999;position:fixed;right:-255px;top:40%;} .theblogwidgets div{ padding: 0; margin-right:-8px; border:4px solid  #3b5998; background:#fafafa;} .theblogwidgets span{bottom: 4px;font: 8px "lucida grande",tahoma,verdana,arial,sans-serif;position: absolute;right: 6px;text-align: right;z-index: 99999;} .theblogwidgets span a{color: gray;text-decoration:none;} .theblogwidgets span a:hover{text-decoration:underline;} } </style>
    <div class="theblogwidgets" style="">
<div>
 <iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fambassadornepal&tabs=timeline&width=250&height=400&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId" frameborder="0" scrolling="yes" style="border: white; overflow: hidden; height: 350px; width: 250px; max-width:100%;background:#fafafa;color:000;"></iframe></div>
</div>';
}
$jVars['module:fb-side'] = $ret;
$otaRec = SocialNetworking::find_ota();
$ota = "";
$disota ="";
if (!empty($otaRec)) {
    foreach ($otaRec as $otaRow) {
        $icon= $otaRow->image;
        
if(!empty($icon)){
    $disota .='
    <div class=" col-lg-2 col-md-2 col-5">
    <a href="' . $otaRow->linksrc . '" target="_blank"><img src="'.IMAGE_PATH.'social/' . $otaRow->image . '" class="ota_one alt="social"></a>
</div>';
}
else{
    $disota .='
    <div class=" col-lg-2 col-md-2 col-5">
    <a href="' . $otaRow->linksrc . '" target="_blank"><i class="fa-brands '.$otaRow->icon.' "></i></a>
</div>';

}
        
        
    }
    $ota .= '
    <div class="row otas">
        <ul class="list-unstyled d-flex gap-3 justify-content-center">
        '.$disota.'
        </ul>
      </div>
        ';
}


$jVars['module:ota'] = $disota;
?>