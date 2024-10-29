<?php
$booking_code = Config::getField('hotel_code', true);


/*
* Home accmodation list
*/
$reshmpkg = '';
$imageList = '';

if (defined('HOME_PAGE')) {
    $acid = Package::get_accommodationId();
    $pkgRec = Package::find_by_id($acid);
    if (!empty($pkgRec)) {
        $subRec = Subpackage::getPackage_limit($acid);

        if (!empty($subRec)) {
            $imglink = '';
            $reshmpkg .= '';

            $reshmpkg .= "";
            foreach ($subRec as $subRow) {

                $features_of_rooms = '';
                if ($subRow->class_room_style == 'best_deal') {
                    $features_of_rooms = '<div class="tags discount">Best Deal</div>';
                } elseif ($subRow->class_room_style == 'featured_room') {
                    $features_of_rooms = '<div class="tags featured">Featured Room</div>';
                }

                $img123 = unserialize($subRow->image);

                if (!empty($subRow->image)) {

                    $imgpath = IMAGE_PATH . 'subpackage/' . $img123[0];
                } else {
                    $imgpath = IMAGE_PATH . 'static/inner-img.jpg';
                }
                $file_path = SITE_ROOT . 'images/subpackage/' . $img123[0];
                if (file_exists($file_path) and !empty($subRow->image)) {
                    $reshmpkg .= '
                            <div class="col-md-4 room-item wow fadeInUp" data-wow-delay=".4s">
                               <div class="inner">
                                   ' . $features_of_rooms . '
                                   <img src="' . $imgpath . '" class="img-responsive" alt="' . $subRow->title . '">
                                   <h3>' . $subRow->title . '</h3>
                                   <div class="price_from">Start From <span>' . $subRow->currency . ' ' . $subRow->onep_price . '++</span>/night</div>
                                   <div class="spacer-half"></div>
                                   <a href="' . BASE_URL . $subRow->slug . '" class="btn-detail">View Details</a>
                               </div>
                           </div>
                                ';

                }
            }
            $reshmpkg .= '';
        }
    }


}


$jVars['module:home-accommodation'] = $reshmpkg;


/*
* Home sub package list
*/
$newpkg = '';

if (defined('HOME_PAGE')) {
//$slug = !empty($_REQUEST['slug'])? addslashes($_REQUEST['slug']) : '';
//$pkgRec = Package::getPackage();
//if (!empty($pkgRec)) {

    /* foreach($pkgRec as $pkgRow) {
        $imglink = '';*/
    /* if ($pkgRow->banner_image != "a:0:{}") {
         $imageList = unserialize($pkgRow->banner_image);
         $file_path = SITE_ROOT . 'images/package/banner/' . $imageList[0];
         if (file_exists($file_path)) {
             $imglink = IMAGE_PATH . 'package/banner/' . $imageList[0];
         }
     } */
    // if(($pkgRow->type)==0) {
    $newpkg .= '<div class="col-sm-6">
                <div class="mosaic_container">
                     <a href="' . BASE_URL . 'page/about-us">
                    <img src="' . BASE_URL . 'template/web/img/mosaic_1.jpg" alt="image" class="img-responsive add_bottom_30"><span class="caption_2">Experience Peninsula</span>
                    </a>
                </div>
            </div>';
    //}else{
    $newpkg .= '<div class="col-sm-6">
         
         <div class="col-xs-12">
                    <div class="mosaic_container">
                        <a href="' . BASE_URL . 'services">
                        <img src="' . BASE_URL . 'template/web/img/mosaic_2.jpg" alt="image" class="img-responsive add_bottom_30"><span class="caption_2">Services & Faciities</span>
                        </a>
                    </div>
                </div>
                <div class="col-xs-6">
                    <div class="mosaic_container">
                        <a href="' . BASE_URL . 'rooms">
                        <img src="' . BASE_URL . 'template/web/img/room.jpg" alt="rooms" class="img-responsive add_bottom_30"><span class="caption_2">
Accommodation</span>
                        </a>
                    </div>
                </div>
                  <div class="col-xs-6">
                     <a href="' . BASE_URL . 'dining">
                    <div class="mosaic_container">
                        <img src="' . BASE_URL . 'template/web/img/dining.jpg" alt="dining" class="img-responsive add_bottom_30"><span class="caption_2">Dining & Bar</span>
                    </div>
                    </a>
                </div>
                
                  </div>
                ';

    //}
    //}
//}
}
$jVars['module:newpkg'] = $newpkg;


/////
$reshplist = $pakagehometype = '';
$cnt = 1;
if (defined('HOME_PAGE')) {
    $pgkRows = Package::find_by_id(1);
    $pkgRec = Subpackage::getPackage_limits(1, 6);

    if (!empty($pkgRec)) {

        foreach ($pkgRec as $pkgRow) {
            //echo "<pre>";print_r($pkgRow);die();

            //if(!empty($pkgRow->image2)) {


            //echo "<pre>";print_r($reshplist);die();
            if (($cnt % 3) == 2) {
                $reshplist .= ' <div class="container margin_60">
        <div class="row">
            <div class="col-md-5 col-md-offset-1 col-md-push-5">
                  <figure class="room_pic left"><a href="' . BASE_URL . '' . $pkgRow->slug . '"><img src="' . IMAGE_PATH . 'subpackage/image/' . $pkgRow->image2 . '" alt="' . $pkgRow->title . '" class="img-responsive"></a><span class="wow zoomIn"><sup>' . $pkgRow->currency . ' </sup>' . $pkgRow->onep_price . '<small>Per night</small></span></figure>
            </div>
            <div class="col-md-4 col-md-offset-1 col-md-pull-6">
                <div class="room_desc_home">
                    <h3>' . $pkgRow->title . '</h3>
                    <p>
                         ' . $pkgRow->detail . ' 
                    </p>
                    <ul>';
                $saveRec = unserialize($pkgRow->feature);
                $count = 1;
                if ($saveRec != null) {
                    $featureList = $saveRec[47][1];
                    //echo "<pre>";print_r($featureList);die();

                    if (!empty($featureList)) {
                        $icoRec = '';

                        foreach ($featureList as $fetRow) {

                            $icoRec = Features::get_by_id($fetRow);
                            $reshplist .= '<li>
                            <div class="tooltip_styled tooltip-effect-4">
                                <span class="tooltip-item"><i class="' . $icoRec->icon . '"></i></span>
                                    <div class="tooltip-content">' . $icoRec->title . '</div>
                              </div>
                              </li>';


                            if ($count++ == 5) break;
                        }
                    }
                }
                $reshplist .= '</ul>
                    <a href="' . BASE_URL . '' . $pkgRow->slug . '" class="btn_1_outline">Read more</a>
                </div><!-- End room_desc_home -->
            </div>
        </div><!-- End row -->
    </div>';

            } else {
                $reshplist .= '  <div class="container_styled_1">
        <div class="container margin_60">
            <div class="row">
                <div class="col-md-5 col-md-offset-1">
                    <figure class="room_pic"><a href="' . BASE_URL . '' . $pkgRow->slug . '"><img src="' . IMAGE_PATH . 'subpackage/image/' . $pkgRow->image2 . '" alt="' . $pkgRow->title . ' " class="img-responsive"></a><span class="wow zoomIn"><sup>' . $pkgRow->currency . ' </sup>' . $pkgRow->onep_price . '<small>Per night</small></span></figure>
                </div>
                <div class="col-md-4 col-md-offset-1">
                    <div class="room_desc_home">
                        <h3>' . $pkgRow->title . '  </h3>
                        <p>
                            ' . $pkgRow->detail . '
                        </p>
                        <ul>';
                $saveRec = unserialize($pkgRow->feature);
                $count = 1;
                if ($saveRec != null) {
                    $featureList = $saveRec[47][1];
                    //echo "<pre>";print_r($featureList);die();

                    if (!empty($featureList)) {
                        $icoRec = '';

                        foreach ($featureList as $fetRow) {

                            $icoRec = Features::get_by_id($fetRow);
                            $reshplist .= '<li>
                            <div class="tooltip_styled tooltip-effect-4">
                                <span class="tooltip-item"><i class="' . $icoRec->icon . '"></i></span>
                                    <div class="tooltip-content">' . $icoRec->title . '</div>
                              </div>
                              </li>';


                            if ($count++ == 5) break;
                        }
                    }
                }
                $reshplist .= '</ul>
                        <a href="' . BASE_URL . '' . $pkgRow->slug . '" class="btn_1_outline">Read more</a>
                    </div><!-- End room_desc_home -->
                </div>
            </div><!-- End row -->
        </div><!-- End container -->
    </div>';
            }
            $cnt++;
//}

        }
    }
    /* $reshplist.= '</div>
                 </div>
             </div>';*/
}

$jVars['module:home-packagelist'] = $reshplist;
$jVars['module:home-package-type-list'] = $pakagehometype;


$roomlist = $roombread = '';
$modalpopup = '';
$room_package = '';
if (defined('PACKAGE_PAGE') and isset($_REQUEST['slug'])) {

    $slug = !empty($_REQUEST['slug']) ? addslashes($_REQUEST['slug']) : '';

    $pkgRow = Package::find_by_slug($slug);
    if ($pkgRow->type == 1) {

        $imglink = BASE_URL . 'template/web/images/bg/room-banner.jpg';
        $pkgRowImg = $pkgRow->banner_image;
        if ($pkgRowImg != "a:0:{}") {
            $pkgRowList = unserialize($pkgRowImg);
            $file_path = SITE_ROOT . 'images/package/banner/' . $pkgRowList[0];
            if (file_exists($file_path) and !empty($pkgRowList[0])) {
                $imglink = IMAGE_PATH . 'package/banner/' . $pkgRowList[0];
            }
        }

        $roombread .= '
    <div class="room_banner_image text-center" style="background: linear-gradient(90deg, rgba(0, 0, 0, 0.4234068627) 0%, rgba(0, 0, 0, 0.3169642857) 100%), url(' . $imglink . '); background-size: cover;
  background-position: bottom;
  height: 300px;
  text-transform: uppercase;
  display: grid;
  place-items: center;">
      <nav aria-label="breadcrumb">
        <h2 class="text-white">' . $pkgRow->title . '</h2>
        <ol class="breadcrumb text-white">
          <li class="breadcrumb-item"><a href="home" class="text-white text-decoration-none">Home</a></li>
          <li class="breadcrumb-item text-white active" aria-current="page">' . $pkgRow->title . '</li>
        </ol>
      </nav>
  </div>

    ';

        $sql = "SELECT *  FROM tbl_package_sub WHERE status='1' AND type = '{$pkgRow->id}' ORDER BY sortorder DESC ";

        $page = (isset($_REQUEST["pageno"]) and !empty($_REQUEST["pageno"])) ? $_REQUEST["pageno"] : 1;
        $limit = 200;
        $total = $db->num_rows($db->query($sql));
        $startpoint = ($page * $limit) - $limit;
        $sql .= " LIMIT " . $startpoint . "," . $limit;
        $query = $db->query($sql);
        $pkgRec = Subpackage::find_by_sql($sql);
        // pr($pkgRec);

        if (!empty($pkgRec)) {


            foreach ($pkgRec as $key => $subpkgRow) {
                $imageList = '';
                if ($subpkgRow->image != "a:0:{}") {
                    $imageList = unserialize($subpkgRow->image);
                }


                $roomlist .= '
            <div class="our_room__page">
    <div class="row gx-lg-5 align-items-center">
      <div class="col-lg-4 col-md-4 m-0">
<div class="image_wrapper">
  <img src="' . IMAGE_PATH . 'subpackage/' . $imageList[0] . '" alt="" width="100%">
</div>
</div>
      <div class="col-lg-8 col-md-8 room__text">
        <h2>' . $subpkgRow->title . '</h2>
        <p>' . $subpkgRow->detail . '</p>
      <a href="' . BASE_URL . $subpkgRow->slug . '" class="learn__more">Learn More &rarr;</a>
      </div>
    </div>  
  </div>

         
                ';

            }
            $room_package = '
                <!-- Rooms starts -->
                <div class="container margin_20 mb-5">
                       
                                ' . $roomlist . '
                               
                            </div>
                <!-- Room Ends -->
                
                <div class="ota_logo"><div class="container">
      <div class="ota__wrapper">
       <div class="row  ota__box align-items-md-center justify-content-center gap-1 align-items-center mx-md-5 flex-nowrap">
        ' . $jVars['module:ota'] . '
       </div>
      </div>
     </div></div>
                
                ';
        }
    } else {
        $imglink = BASE_URL . 'template/web/image/default.jpg';
        $pkgRowImg = $pkgRow->banner_image;
        if ($pkgRowImg != "a:0:{}") {
            $pkgRowList = unserialize($pkgRowImg);
            $file_path = SITE_ROOT . 'images/package/banner/' . $pkgRowList[0];
            if (file_exists($file_path) and !empty($pkgRowList[0])) {
                $imglink = IMAGE_PATH . 'package/banner/' . $pkgRowList[0];
            } else {
                $imglink = BASE_URL . 'template/web/image/default.jpg';
            }
        }

        $roombread .= '
    
    <div class="dinning_banner_image text-center" style="background: linear-gradient(90deg, rgba(0, 0, 0, 0.4234068627) 0%, rgba(0, 0, 0, 0.3169642857) 100%), url(' . $imglink . ');
   background-size: cover;
  background-position: center;
  height: 300px;
  text-transform: uppercase;
  display: grid;
  place-items: center;">
      <nav aria-label="breadcrumb">
        <h2 class="text-white">' . $pkgRow->title . '</h2>
        <ol class="breadcrumb text-white">
          <li class="breadcrumb-item"><a href="home" class="text-white text-decoration-none">Home</a></li>
          <li class="breadcrumb-item text-white active" aria-current="page">' . $pkgRow->title . '</li>
        </ol>
      </nav>
  </div>

  

    ';

        $sql = "SELECT *  FROM tbl_package_sub WHERE status='1' AND type = '{$pkgRow->id}' ORDER BY sortorder DESC ";

        $page = (isset($_REQUEST["pageno"]) and !empty($_REQUEST["pageno"])) ? $_REQUEST["pageno"] : 1;
        $limit = 200;
        $total = $db->num_rows($db->query($sql));
        $startpoint = ($page * $limit) - $limit;
        $sql .= " LIMIT " . $startpoint . "," . $limit;
        $query = $db->query($sql);
        $pkgRec = Subpackage::find_by_sql($sql);

        // pr($pkgRec);

        if (!empty($pkgRec)) {

            $count = 1;


            $max_count = count($subpkgRec);

            foreach ($pkgRec as $key => $subpkgRow) {
                $gallRec = SubPackageImage::getImagelimit_by(3, $subpkgRow->id);
                $subpkg_caro = '';
                foreach ($gallRec as $row) {
                    $file_path = SITE_ROOT . 'images/package/galleryimages/' . $row->image;
                    if (file_exists($file_path) and !empty($row->image)):

                        // $active=($count==0)?'active':'';
                        $subpkg_caro .= '
                    <div class="item">
  <img src="' . IMAGE_PATH . 'package/galleryimages/' . $row->image . '" alt="' . $row->title . '" class="img-fluid">
</div>
                     
                            
                                ';


                    endif;


                }

                $button = '';
                $modal = '';
                $imglink = BASE_URL . 'template/web/images/bg/room-banner.jpg';


                $imageList = '';
                if ($subpkgRow->image != "a:0:{}") {
                    $imageList = unserialize($subpkgRow->image);
                    $file_path = SITE_ROOT . 'images/subpackage/' . $imageList[0];
                    if (file_exists($file_path) and !empty($imageList[0])) {
                        $imglink = IMAGE_PATH . 'subpackage/' . $imageList[0];
                    }
                }
                if ($pkgRow->id == 11) {
                    $button = '<a href="contact-us" class="btn">Book Now</a>';
                    if (!empty($subpkgRow->below_content)) {
                        $modal = '<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#' . $subpkgRow->slug . '">
                details
              </button>';
                    } else {
                        $modal = '';
                    }
                } else {
                    $button = '<a href="#" class="btn">View Menu</a>';
                }

                if ($subpkgRow->type == 11) {

                    $modalpopup .= '
                <div class="modal fade" id="hall_' . $subpkgRow->slug . '" tabindex="-1" aria-labelledby="hall_Label" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header text-white" style="background-color: var(--color-orange);">
            <h1 class="modal-title fs-5" id="hall_Label">Hall Enquiry</h1>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
          <form id="hall_conta">
              <div class="mb-4">
                <input type="text" class="form-control" id="FullName" name="name" placeholder="Full Name">
                <input type="hidden" class="form-control"  name="hall" value="' . $subpkgRow->title . '">
              </div>
              <div class="mb-4">
                <input type="email" class="form-control" id="email" name="email" placeholder="Email">
              </div>
              <div class="mb-4">
                <input type="number" class="form-control" id="Contact"  name="contact" placeholder="Mobile No.">
              </div>
              <div class="mb-4">
                <input type="text" class="form-control" id="event_name" name="event" placeholder="Event Name">
              </div>
              <div class="mb-4 d-flex justify-content-between gap-3">
                <div class="book_date flex-grow-1">
                <input type="date" class="form-control" id="date" name="date" placeholder="Date">
                </div>
                <div class="no_pax flex-grow-1">
                  <input type="number" class="form-control"  name="pax" id="number" placeholder="Pax">
                </div>
              </div>
           
              <div class="mb-3">
                <textarea class="form-control" id="message-text" name="message" placeholder="Message"></textarea>
              </div>
              <div class="mb-3">
              <div class="g-recaptcha" data-sitekey="6LcJdJspAAAAAOMSDeSzpDwDHqexpELexIkhOPck"></div>
              </div>
              <div class="modal-footer">
                <button type="submit" id="submit" class="btn btn-danger">Submit</button>
              </div>
            </form>
            
          </div>
        </div>
      </div>
    </div>
       ';
                    if ($count % 2 == 1) {
                        // pr($subpkgRow);
                        $roomlist .= '
            <div class="event_contents mb-5">
            <div class="row justify-content-center align-items-center event_background_color p-lg-4">
              <div class="col-lg-6 col-md-12">
                <h2>' . $subpkgRow->title . '</h2>
                <p class="mt-4">' . strip_tags($subpkgRow->content) . '</p>
              <div class="event_details">
                <div class="row">
                  <div class="col-sm-4">
                    <p><i class="fa-solid fa-ruler-combined"></i>&nbsp; ' . $subpkgRow->seats . '</p>
                  </div>
                  <div class="col-sm-4">
                    <p><i class="fa-solid fa-people-group"></i>&nbsp; ' . $subpkgRow->cocktail . '</p>
        
                  </div>
                </div>
              </div>
              <button type="button" class="enquiry_btn btn" data-bs-toggle="modal" data-bs-target="#hall_' . $subpkgRow->slug . '">Enquire</button>
              </div>
              <div class="col-lg-6 col-md-12">
                <div class="event_image_wrapper kreeti_hall">
                  <img src="' . $imglink . '" alt="' . $subpkgRow->title . '">
                </div>
              </div>
            </div>
          </div>

                
                ';

                    } else {
                        $roomlist .= '
                <div class="event_contents">
    <div class="row justify-content-center align-items-center event_background_color p-lg-4">
      <div class="col-lg-6 col-md-12 order-lg-1">
        <h2>' . $subpkgRow->title . '</h2>
        <p class="mt-4">' . strip_tags($subpkgRow->content) . '</p>
      <div class="event_details">
        <div class="row">
          <div class="col-sm-4">
            <p><i class="fa-solid fa-ruler-combined"></i> &nbsp;' . $subpkgRow->seats . '</p>
          </div>
          <div class="col-sm-4">
            <p><i class="fa-solid fa-people-group"></i>&nbsp; ' . $subpkgRow->cocktail . '</p>

          </div>
        </div>
      </div>
      <button type="button" class="enquiry_btn btn" data-bs-toggle="modal" data-bs-target="#hall_' . $subpkgRow->slug . '">Enquire</button>
      </div>
      <div class="col-lg-6 col-md-12">
        <div class="event_image_wrapper crystal_hall">
          <img src="' . $imglink . '" alt="' . $subpkgRow->title . '">
        </div>
      </div>
    </div>
    ';
                    }
                    $count++;
                    $room_package = '
            <!-- Rooms starts -->
            <div class="container margin_20">
<img src="template/web/image/logo/logo_group/EVENTS.png" alt="" width="170px" class="mx-auto d-block mb-5">

' . $roomlist . ' ';
                    $array1 = [];
                    $room_amenities = '';
                    if (!empty($subpkgRow->feature)) {
                        $ftRec = unserialize($subpkgRow->feature);
                        if (!empty($ftRec)) {


                            $resubpkgtitle = '';
                            foreach ($ftRec as $k => $v) {
                                $resubpkgtitle .= '        
                                  ' . $v[0][0] . '
                                  ';
                                // $resubpkgDetail .= '<h3 class="room_d_title">' . $v[0][0] . '</h3>';
                                if (!empty($v[1])) {
                                    $sfetname = '';
                                    $i = 0;
                                    $room_package .= '';
                                    $feature_list = '';

                                    foreach ($v[1] as $kk => $vv) {
                                        // pr($vv);
                                        if ($key == 0) {
                                            $array1[] = $vv;
                                        }
                                        // $sfetname = Features::find_by_id($vv);
                                        // // pr($sfetname);
                                        // if(!empty($sfetname->image)){
                                        //   $feature_list .= '
                                        //   <div class="col-sm-3">
                                        //   <img src="' . BASE_URL . 'images/features/'. $sfetname->image . '" alt="' . $sfetname->title . '">
                                        //   <p>' . $sfetname->title . '</p>
                                        //   </div>';
                                        // }
                                        // else{
                                        //   $feature_list .= '
                                        //               <div class="col-sm-3">
                                        //               <i class="' . $sfetname->icon . '"></i>
                                        //               <p>' . $sfetname->title . '</p>
                                        //               </div>
                                        //               ';
                                        //             }

                                        //             $i++;
                                        //             if(($i%10000 == 0) || (end($v[1]) == $vv)){
                                        //               $room_package  .= '
                                        //               <div class="hall_amenities margin_20">
                                        //               <h4 class="Amenities">' .  $resubpkgtitle  . '</h4>
                                        //               <div class="container mt-5 pb-5">
                                        //               <div class="row">
                                        //               '. $feature_list .'
                                        //               </div>
                                        //               </div>
                                        //               </div>

                                        //               ';
                                        //               $feature_list='';
                                        //             }
                                    }
                                }
                            }
                            foreach ($array1 as $kk => $vv) {
                                // pr($vv);
                                if ($key == 0) {
                                    $array1[] = $vv;
                                }
                                $sfetname = Features::find_by_id($vv);
                                // pr($sfetname);
                                if (!empty($sfetname->image)) {
                                    $feature_list .= ' 
                                              <div class="col-sm-3">
                                              <img src="' . BASE_URL . 'images/features/' . $sfetname->image . '" alt="' . $sfetname->title . '">
                                              <p>' . $sfetname->title . '</p>
                                              </div>';
                                } else {
                                    $feature_list .= '      
                                                          <div class="col-sm-3">
                                                          <i class="' . $sfetname->icon . '"></i>
                                                          <p>' . $sfetname->title . '</p>
                                                          </div>
                                                          ';
                                }
                                // pr($feature_list);
                                $i++;
                                if (($i % 10000 == 0) || (end($v[1]) == $vv)) {
                                    $room_amenities .= '
                                              <div class="hall_amenities margin_20">
                                                <h4 class="Amenities">' . $resubpkgtitle . '</h4>
                                                  <div class="container mt-5 pb-5">
                                                    <div class="row">
                                                    ' . $feature_list . '
                                                    </div>
                                                  </div>
                                              </div>
                                              
                                              ';
                                    // $feature_list='';
                                }
                            }
                        }

                    }
                    // pr($room_amenities);
                    $room_package .= '   </div>
                          </div>   <div class="hall_amenities margin_20">
                          <h4 class="Amenities">Hall Features</h4>
                          <div class="container mt-5 pb-5">
                          <div class="row">
                            <div class="hall_amenities margin_20">
                              <h4 class="Amenities">' . $resubpkgtitle . '</h4>
                                <div class="container mt-5 pb-5">
                                  <div class="row">
                                  ' . $feature_list . '
                                  </div>
                                </div>
                            </div>
                          </div>
                          </div>
                          </div>
                          
                          </div>
                          
                          
                          <!-- Room Ends -->';


                }


                if ($subpkgRow->type == 12) {
                    if ($count % 2 == 1) {
                        $roomlist .= '
            <div class="dining_content">
        <div class="row align-items-center justify-content-center gx-md-5">
          <div class="col-lg-7 col-md-12 col-sm-12">
            <h2>' . $subpkgRow->title . '</h2>
            <p>' . $subpkgRow->content . '</p>
            <!-- restaurant info -->
            <div class="restaurant_info mt-5">
              <table class="table text-center fw-light table-bordered">
                <thead>
                  <tr>
                    <th>Covers</th>
                    <th>Type</th>
                    <th>Timing</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>' . $subpkgRow->round_table . '</td>
                    <td>' . $subpkgRow->shape . '</td>
                    <td>' . $subpkgRow->theatre_style . '</td>
                  </tr>
                </tbody>
              </table>
            </div>

            <!-- restaurant info end -->
          </div>
<div class="col-lg-5 col-md-12">
  <div class="dining_image_slider owl-carousel">
  ' . $subpkg_caro . '
  </div>
</div>

        </div>
      </div>

          
                
                ';
                    } else {
                        $roomlist .= '     <div class="dining_content">
                <div class="row align-items-center justify-content-center gx-md-5">
                  <div class="col-lg-7 col-md-12 col-sm-12">
                    <h2>' . $subpkgRow->title . '</h2>
                    <p>' . $subpkgRow->content . '</p>
                    <!-- restaurant info -->
                    <div class="restaurant_info mt-5">
                      <table class="table text-center fw-light table-bordered">
                        <thead>
                          <tr>
                            <th>Covers</th>
                            <th>Type</th>
                            <th>Timing</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>' . $subpkgRow->round_table . '</td>
                            <td>' . $subpkgRow->shape . '</td>
                            <td>' . $subpkgRow->theatre_style . '</td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
        
                    <!-- restaurant info end -->
                  </div>
        <div class="col-lg-5 col-md-12">
          <div class="dining_image_slider owl-carousel">
          ' . $subpkg_caro . '
          </div>
        </div>
        
                </div>
              </div>
        ';
                    }
                    $count++;
                    $room_package = '
                <!-- Rooms starts -->
                <div class="container margin_20">
   <img src="template/web/image/logo/logo_group/SkyDeck.png" alt="" width="170px" class="mx-auto d-block mb-5">

                                ' . $roomlist . '
                
                        </div>
                    
                
                <!-- Room Ends -->';

                }

            }

            // if($pkgRow->id == 11){
            //     $room_package .= '<h1>hall?</h1>';
            // }

//         $room_package = '
//                 <!-- Rooms starts -->
//                 <div class="container margin_20">
//    <img src="template/web/image/logo/logo_group/EVENTS.png" alt="" width="110px" class="mx-auto d-block mb-5">

//                                 '. $roomlist .'

//                         </div>


//                 <!-- Room Ends -->';
        }

    }
    if ($pkgRow->id >= 14) {

        $room_package = '
                <!-- Rooms starts -->
                <div class="mad-content no-pd">
            <div class="container">
                <div class="mad-section">
                    <div class="row">
                        <div class="col-lg-5">
                            <div class="mad-pre-title">' . $pkgRow->title . '</div>
                            <h2 class="mad-page-title" style="font-size: 42px;line-height: 46px;">' . $pkgRow->sub_title . '</h2>
                        </div>
                        
                    </div>
                    <div class="col-lg-7">
                            <p class="mad-text-medium">' . $pkgRow->content . '
                            </p>
                        </div>
                </div>
                            </div>
                        </div>
                    
                
                <!-- Room Ends -->';
    }
}


if (defined('HOME_PAGE')) {


    $sql = "SELECT *  FROM tbl_package_sub WHERE status='1' AND type = '1' ORDER BY sortorder DESC ";

    $page = (isset($_REQUEST["pageno"]) and !empty($_REQUEST["pageno"])) ? $_REQUEST["pageno"] : 1;
    $limit = 200;
    $total = $db->num_rows($db->query($sql));
    $startpoint = ($page * $limit) - $limit;
    $sql .= " LIMIT " . $startpoint . "," . $limit;
    $query = $db->query($sql);
    $pkgRec = Subpackage::find_by_sql($sql);


    // pr($pkgRec);
    if (!empty($pkgRec)) {

        foreach ($pkgRec as $key => $subpkgRow) {
            if (!empty($subpkgRow->image)) {
                $img123 = unserialize($subpkgRow->image);

                $file_path = SITE_ROOT . 'images/subpackage/' . $img123[0];
                if (file_exists($file_path) && !empty($img123[0])) {
                    $imglink = IMAGE_PATH . 'subpackage/' . $img123[0];
                } else {
                    $imglink = IMAGE_PATH . 'static/static.jpg';
                }
            } else {
                $imglink = IMAGE_PATH . 'static/static.jpg';
            }
            // $imageList = $subpkgRow->image2;

            // // pr($subpkgRow->image2);
            //   $imagepath='';
            //       // $imageList = $gallRec[0];


            //           $file_path = SITE_ROOT.'images/subpackage/image/'.$subpkgRow->image2;
            //         //  pr($file_path);
            //           if(file_exists($file_path) and !empty($imageList)):

            //               $imagepath = IMAGE_PATH.'subpackage/image/'.$subpkgRow->image2;


            //           endif;
// pr($imagepath);
// pr($subpkgRow);
            $roomlist .= '
            <div class="item">
            <div class="our_rooms_wrapper">
              <img src="' . $imglink . '" alt="' . $subpkgRow->title . '">
            </div>
            <div class="room_info mt-3">
              <h3>' . $subpkgRow->title . '</h3>
              <p>' . $subpkgRow->short_title . '</p>
              <a href="' . BASE_URL . $subpkgRow->slug . '" class="text-decoration-none text-black">Explore</a>
            </div>
          </div>
                ';

        }
        $room_package = '
            <section class="our_rooms ">
                <h4>Our Rooms</h4>
                <p class="subtitle text-center">Discover Your Ideal Retreat: Explore Our Range of Exquisite Rooms</p>
                <div class="container">
                    <div class="rooms_slider">
                        <div class="owl-carousel rooms__slider owl-theme">
                            ' . $roomlist . '
                        </div>
                    </div>
                </div>
            </section>>
        ';
    }
}


$jVars['module:list-modalpop-up'] = $modalpopup;
$jVars['module:list-package-room'] = $room_package;
$jVars['module:list-package-room-bred'] = $roombread;

