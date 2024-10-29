<?php
$nearbydetail = $nearbydetail_modals= $imageList = $nearbybred = '';

if (defined('HOME_PAGE')) {
    $recRows = Nearby::find_all_active();
    // pr($recRow);
    if (!empty($recRows)) {

        foreach($recRows as $recRow){

            $imglink = BASE_URL . 'template/web/img/slider/2.jpg';
            if ($recRow->image != "a:0:{}") {
                $imageList = unserialize($recRow->image);
                $imgno = array_rand($imageList);
                $file_path = SITE_ROOT . 'images/nearby/' . $imageList[$imgno];
                if (file_exists($file_path)) {
                    $imglink = IMAGE_PATH . 'nearby/' . $imageList[$imgno];
                }
            }

            $nearbydetail .= '
            <div class="col-lg-3 col-md-3 col-sm-12 ">
            <img src="'.$imglink.'" width="50px" alt="" class="mb-3">
              <h5>' . $recRow->title . '</h5>
              <div class="d-flex justify-content-around py-lg-3">
                  <p>' . $recRow->distance . '</p>
                  <a href="javascript:void(0);" class="get_location" data-src="' . $recRow->embed_link . '"> Get
                      Direction</a>
              </div>
          </div>

            
            ';

        } 
    }
}
// pr($nearbydetail);


$jVars['module:inner-nearby-detail'] = $nearbydetail;
$jVars['module:inner-nearby-detail-modals'] = $nearbydetail_modals;

?>