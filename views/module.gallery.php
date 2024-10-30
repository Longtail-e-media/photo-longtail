<?php
$reslgall = '';

// $gallRec = Gallery::getParentgallery(2);
// if (!empty($gallRec)) {
// foreach ($gallRec as $gallRow) {
// $childRec = GalleryImage::getGalleryImages($gallRow->id);
// if (!empty($childRec)) {
// $reslgall .= '';
// foreach ($childRec as $childRow) {
// $file_path = SITE_ROOT . 'images/gallery/galleryimages/' . $childRow->image;
// if (file_exists($file_path) and !empty($childRow->image)) {
//     $reslgall .= '
//                 <div class="gallery-image">
//                     <img src="' . IMAGE_PATH . 'gallery/galleryimages/' . $childRow->image . '" alt="' . $childRow->title . '">
//                 </div>
//                     ';
// }
// }
// $reslgall .= '';
// }
// }
// }

$provincedata = array("1" => "Koshi", "2" => "Madhesh", "3" => "Bagmati", "4" => "Gandaki", "5" => "Lumbini", "6" => "Karnali", "7" => "Sudurpashchim");
$res_gallery = '
    <!-- Gallery starts -->
    <section class="content gallery gallery1">
        <div class="container">
            <div class="section-title title-white">
                <h2>Beautiful View of <span>Shangrila Blu</span></h2>
                <p class="mar-bottom-30">Few collection of our pictures. We are quiet sure that you will find it more beautiful once you physically visit us.</p>
            </div>
        </div>
        <div class="gallery-main gallery-slider">
            ' . $reslgall . '
        </div>
    </section>
    <!-- Gallery Ends -->
';

$jVars['module:galleryHome'] = $res_gallery;


$dininggallery = '';
$galldining = GalleryImage::getImagelist_by(19, 3);
if (!empty($galldining)) {
    $dininggallery .= '<div class="row about">
                     <div class="demo-gallery">
    		     <div id="lightgallery" class="list-unstyled">';
    foreach ($galldining as $row) {
        $dininggallery .= '<div class="item col-sm-4 col-xs-12" data-responsive="' . IMAGE_PATH . 'gallery/galleryimages/' . $row->image . '" data-src="' . IMAGE_PATH . 'gallery/galleryimages/' . $row->image . '" data-sub-html="<h4>' . $row->title . '</h4>">
                        <a href="">
                            <img src="' . IMAGE_PATH . 'gallery/galleryimages/' . $row->image . '"/>
                        </a>
                    </div>';
    }
    $dininggallery .= '</div>
    </div>
    </div>';
}
$jVars['module:dining-gallery'] = $dininggallery;


$gallerybread = '';
$siteRegulars = Config::find_by_id(1);
$imglink = $siteRegulars->gallery_upload;
if (!empty($imglink)) {
    $img = IMAGE_PATH . 'preference/gallery/' . $siteRegulars->gallery_upload;
} else {
    $img = '';
}

$gallerybread = '
<!-- <div class="gallery_banner_image text-center" style="background: linear-gradient(90deg, rgba(0, 0, 0, 0.4234068627) 0%, rgba(0, 0, 0, 0.3169642857) 100%), url(' . $img . ');
 background-size: cover;
  background-position: center;
  height: 300px;
  text-transform: uppercase;
  display: grid;
  place-items: center;">
          <nav aria-label="breadcrumb">
            <h2 class="text-white">Gallery</h2>
            <ol class="breadcrumb text-white">
              <li class="breadcrumb-item"><a href="home" class="text-white text-decoration-none">Home</a></li>
              <li class="breadcrumb-item text-white active" aria-current="page">Gallery</li>
            </ol>
          </nav>
      </div> -->
';

$jVars['module:gallery-bread'] = $gallerybread;

/**
 *      Main Gallery
 */
$thegal = $gallerylistbread = $thegalnav = '';
// $gallRectit = Gallery::getParentgallery();

// if ($gallRectit) {
$thegal .= '';
// foreach ($gallRectit as $row) {
//     $thegalnav .= '
//     <button data-filter=".g-' . $row->id . '">' . $row->title . '</button>';
// }
// $thegal .= '';

// $thegal .= '
//     <div id="gallery" class="gallery full-gallery de-gallery gallery-3-cols">
// ';
//     foreach ($gallRectit as $row) {

//         $gallRec = GalleryImage::getGalleryImages($row->id);
//         foreach ($gallRec as $row1) {
//             // pr($row1);

//             $file_path = SITE_ROOT . 'images/gallery/galleryimages/' . $row1->image;
//             if (file_exists($file_path) and !empty($row1->image)):
//                 $thegal .= ' 
//                 <div class="col-md-4  element-item g-' . $row1->galleryid . '">
// <a href="' . IMAGE_PATH . 'gallery/galleryimages/' . $row1->image . '">
//   <img src="' . IMAGE_PATH . 'gallery/galleryimages/' . $row1->image . '" alt="' . $row1->title . '">
// </a> </div>
//                 ';
//             endif;
//         }
//     }
//     $thegal .= '';


// pr(get_defined_constants());
// pr(GALLERY_PAGE);

if (defined('GALLERY_PAGE')) {
    $accordion = '';
    $firstdes = '';
    $destinationslug = !empty($_REQUEST['slug']) ? Destination::find_by_id($_REQUEST['slug']) : '';
    $provdata = !empty($destinationslug) ? $destinationslug->pradesh : 1;

    for ($i = 1; $i <= 7; $i++) {
        $provdest = Destination::get_destination_bypradesh($i);
        $accbod = '';

        foreach ($provdest as $j => $indest) {
            if ($j == 0 && $i == 1) {
                $firstdes = $indest->id;
            }
            $accbod .= '<li><a href="' . BASE_URL . 'gallery-list/' . $indest->id . '">' . $indest->title . '</a></li>';
        }


        $expanded = ($i == $provdata) ? 'true' : 'false';
        $show = ($i == $provdata) ? 'show' : '';
        $collapsed = ($i == $provdata) ? '' : 'collapsed';
        $accordion .= '
                <div class="accordion-item">
                    <h2 class="accordion-header accord-title">
                      <button class="accordion-button ' . $collapsed . ' type="button" data-bs-toggle="collapse" data-bs-target="#collapse' . $i . '" aria-expanded="' . $expanded . '" aria-controls="collapse' . $i . '">
                         ' . $provincedata["$i"] . '
                      </button>
                    </h2>
                    <div id="collapse' . $i . '" class="accordion-collapse collapse' . $show . '" data-bs-parent="#accordionExample">
                      <div class="accordion-body accord-body">
                            ' . $accbod . '
                      </div>
                    </div>
                </div>';

    }

    $slug = !empty($_REQUEST['slug']) ? $_REQUEST['slug'] : '';
    $destinationid = !empty($_REQUEST['slug']) ? $_REQUEST['slug'] : $firstdes;


    $desthot = Gallery::getParentgallery_by_destination($destinationid);

    $hotedettail = '';
    if (!empty($desthot)) {
        foreach ($desthot as $indhot) {
            // $gallRec = GalleryImage::getGalleryImages($indhot->id);
            // pr($indhot);
            $file_path = SITE_ROOT . 'images/gallery/' . $indhot->image;
            if (file_exists($file_path) and !empty($indhot->image)) {
                $hotedettail .= ' 
    
                        <div class="grid-item inner-images">
                              <a href="' . BASE_URL . 'hotel-detail/' . $indhot->id . '">
        
                                <div class="forname">' . $indhot->title . '</div>
                                <img src="' . IMAGE_PATH . 'gallery/' . $indhot->image . '" class="gallery-image"/>
                            </a>
                         </div>
    
                        ';
            } else {
                $hotedettail .= ' 
    
                        <div class="grid-item logo__background">
                              <a href="' . BASE_URL . 'hotel-detail/' . $indhot->id . '">
        
                                <div class="forname">' . $indhot->title . '</div>
                                <img src="' . IMAGE_PATH . 'preference/other/' . $siteRegulars->other_upload . '" />
                            </a>
                         </div>
    
                        ';

            }
        }
    }
    // else{
    //     $hotedettail .='<div class="logo__background"><img src="'. IMAGE_PATH . 'preference/' . $siteRegulars->logo_upload .'" /></div>';
    // }

    $thegal = '
    
   <div class="row mt-6">
        <div class="hotel_hospitality text-center inner-portfolio-title">
        <h2>Hotels and Hospitality Portfolio</h2>
        <p>Unleashing Hospitality Excellence: Journey Through Our Portfolio </p>
      </div>
      <div class="position-relative">
          <div class="filter-dropdown position-absolute">
            <div class="d-flex justify-content-end" id="filterDropdown">
                <button class="" onclick="dropFunction()">Search by location <span><i class="fa fa-chevron-down" id="dropIcon"></i></span></button>
            </div>
            <div class="dropdownMenu hidden-menu" id="dropdownFilterMenu">
                    <div class="accordion mt-4" id="accordionExample">
                        ' . $accordion . '
                    </div>
                </div>
          </div>
      </div>
    <div class = "col-md-12 col-sm-12 mt-5 img-gallery-container">
                <div class="grid" data-masonry= \'{ "itemSelector": ".grid-item" }\'>
                  <div class="grid-sizer"></div>
                  ' . $hotedettail . '
                </div>
   </div>
   </div>
    ';


}

$jVars['module:gallery-list'] = $thegal;
$jVars['module:gallery-nav'] = $thegalnav;


//gallerydetailpage
$thegal = $gallerylistbread = $thegalnav = '';

if (defined('GALLERY_DETAIL')) {
    $accordion = '';
    $firstdes = '';

    $id = !empty($_REQUEST['slug']) ? $_REQUEST['slug'] : '';


    $indhot = Gallery::find_by_id($id);


    $gallRec = GalleryImage::getGalleryImages($indhot->id);

    $gallcoll = '';
    foreach ($gallRec as $row1) {
        $file_path = SITE_ROOT . 'images/gallery/galleryimages/' . $row1->image;
        if (file_exists($file_path) and !empty($row1->image)):
            $gallcoll .= ' 
                <div class="grid-item  ">
                    <a href="' . IMAGE_PATH . 'gallery/galleryimages/' . $row1->image . '">
                      <img src="' . IMAGE_PATH . 'gallery/galleryimages/' . $row1->image . '" alt="' . $row1->title . '">
                    </a> </div>
                ';
        endif;
    }

    $thegal = '
    
        <!-- old code here, do not delete
        <div class="hotel_decrown_inn container-fluid">
            <div class="row mt-6">
                <div class="col-lg-3 ps-5">
                    <div class="back_to_list my-5">
                        <a href="' . BASE_URL . 'gallery-list">Back to List</a>
                    </div>
                    <h2 class="mb-5 mt-3">' . $indhot->title . '</h2>
                    ' . $indhot->content . '
                </div>
                <div class="col-lg-9">
                    <div class="hotel_hospitality text-center w-75">
                        <h2>Hotels and Hospitality Portfolio</h2>
                        <p>Photo Longtail is a visionary photography agency that specializes in capturing the essence of hospitality. </p>
                    </div>
                    <div class = "mt-4" id="lightgallery">
                        <div class="grid">
                            <div class="grid-sizer"></div>
                            ' . $gallcoll . '
                        </div>
                    </div>
                </div>
            </div>
        </div>
        -->
        
        <div class="hotel_decrown_inn container-fluid">
            <div class="row mt-6">
                <div class="col-lg-12">
                    <div class="hotel_hospitality text-center ">
                        <h2>' . $indhot->title . ' Gallery</h2>
                        <p>' . strip_tags($indhot->content) . '</p>
                    </div>
                    <div class = "mt-4" id="lightgallery">
                        <div class="grid">
                            <div class="grid-sizer"></div>
                            ' . $gallcoll . '
                        </div>
                    </div>
                </div>
            </div>
        </div>

    ';
    // foreach($gallRec as $indhot){
    //         // $gallRec = GalleryImage::getGalleryImages($indhot->id);
    //         // pr($indhot);
    //         $file_path = SITE_ROOT . 'images/gallery/' . $indhot->image;
    //         if (file_exists($file_path) and !empty($indhot->image)):
    //             $thegal .= '
    //             <div class="col-md-4" style="overflow:hidden;">
    //                 <!--<a href="' . IMAGE_PATH . 'gallery/' . $indhot->image . '">-->
    //                 <a href="javascript:void(0)">
    //                   <img src="' . IMAGE_PATH . 'gallery/' . $indhot->image . '" alt="' . $indhot->title . '" style="height:200px">
    //                   <p>'. $indhot->title .'</p>
    //                 </a>
    //             </div>
    //             ';
    //         endif;

    // }

    // $thegal .='</div>';


}
// /;
$jVars['module:gallery-detail'] = $thegal;


$province = '';
if (defined('HOME_PAGE')) {
    for ($i = 1; $i <= 7; $i++) {
        $destination_list = '';
        $destination_nav = '';

        $provdest = Destination::get_destination_bypradesh($i);

        foreach ($provdest as $j => $indest) {
            $resGallery = Gallery::getParentgallery_by_destination($indest->id);
            if(!empty($resGallery)){
                $destination_nav = $provincedata["$i"];
                $destination_list .= '<li><a href="' . BASE_URL . 'portfolio-list/' . $indest->slug . '">' . $indest->title . '</a></li>';
            }
        }
        $province .= '
        <div class="province_one">
			<h5>' . $destination_nav . '</h5>
			<ul class="province_one list-unstyled">
				' . $destination_list . '
			</ul>
		</div>';

    }
}
$jVars['module:gallery-province'] = $province;


/*------------ HOMEPAGE IMAGE -------*/
$gallcoll = '';
if (defined('HOME_PAGE')) {
    $gallRec = GalleryImage::getGalleryImagesHome();

    $gallcoll = '';
    foreach ($gallRec as $row1) {
        $file_path = SITE_ROOT . 'images/gallery/galleryimages/' . $row1->image;
        if (file_exists($file_path) and !empty($row1->image)):
            $gallcoll .= ' 

                <div class="grid-item">
                   <a href="' . IMAGE_PATH . 'gallery/galleryimages/' . $row1->image . '">
                    <img src="' . IMAGE_PATH . 'gallery/galleryimages/' . $row1->image . '" alt="' . $row1->title . '">
                    </a>
                </div>
                ';
        endif;
    }
}

$jVars['module:gallery-homepage'] = $gallcoll;


/**
 *      New Gallery List page
 */
$thegalnew = '';
if (defined('GALLERY_LIST_PAGE')) {
    $accordion = '';
    $firstdes = '';
    $destinationslug = !empty($_REQUEST['slug']) ? Destination::find_by_id($_REQUEST['slug']) : '';
    $provdata = !empty($destinationslug) ? $destinationslug->pradesh : 1;

    for ($i = 1; $i <= 7; $i++) {
        $provdest = Destination::get_destination_bypradesh($i);
        $accbod = '';

        foreach ($provdest as $j => $indest) {
            if ($j == 0 && $i == 1) {
                $firstdes = $indest->id;
            }
            $accbod .= '<li><a href="' . BASE_URL . 'gallery-list/' . $indest->id . '">' . $indest->title . '</a></li>';
        }

        $expanded = ($i == $provdata) ? 'true' : 'false';
        $show = ($i == $provdata) ? 'show' : '';
        $collapsed = ($i == $provdata) ? '' : 'collapsed';
        $accordion .= '
            <div class="accordion-item">
                <h2 class="accordion-header accord-title">
                  <button class="accordion-button ' . $collapsed . ' type="button" data-bs-toggle="collapse" data-bs-target="#collapse' . $i . '" aria-expanded="' . $expanded . '" aria-controls="collapse' . $i . '">
                     ' . $provincedata["$i"] . '
                  </button>
                </h2>
                <div id="collapse' . $i . '" class="accordion-collapse collapse ' . $show . '" data-bs-parent="#accordionExample">
                  <div class="accordion-body accord-body">
                    ' . $accbod . '
                  </div>
                </div>
            </div>
        ';
    }

    $slug = !empty($_REQUEST['slug']) ? $_REQUEST['slug'] : '';
    $destinationid = !empty($_REQUEST['slug']) ? $_REQUEST['slug'] : $firstdes;


    $desthot = GalleryImage::find_by_sql("SELECT * FROM tbl_gallery_images ORDER BY RAND()");

    $hotedettail = '';
    if (!empty($desthot)) {
        foreach ($desthot as $indhot) {
            // $gallRec = GalleryImage::getGalleryImages($indhot->id);
            $file_path = SITE_ROOT . 'images/gallery/galleryimages/' . $indhot->image;
            if (file_exists($file_path) and !empty($indhot->image)) {
                $hotedettail .= ' 
                    <div class="grid-item">
                        <a href="' . BASE_URL . 'hotel-detail/' . $indhot->galleryid . '">
                            <div class="forname">' . $indhot->title . '</div>
                            <img data-src="' . IMAGE_PATH . 'gallery/galleryimages/' . $indhot->image . '" class="lazyload" />
                        </a>
                     </div>
                     
                 ';
            } else {
                $hotedettail .= ' 
                    <div class="grid-item">
                        <a href="' . BASE_URL . 'hotel-detail/' . $indhot->galleryid . '">
                            <div class="forname">' . $indhot->title . '</div>
                            <img src="' . IMAGE_PATH . 'preference/other/' . $siteRegulars->other_upload . '" />
                        </a>
                     </div>
                ';
            }
        }
    }

    $thegalnew = '
       <div class="row mt-6 position-relative">
            <div class="hotel_hospitality text-center inner-portfolio-title">
                <h2>Hotels and Hospitality Portfolio</h2>
                <p>Unleashing Hospitality Excellence: Journey Through Our Portfolio </p>
            </div>
            <div class="dropdown-filter-parent">
                <div class="filter-dropdown position-absolute">
                    <div class="d-flex justify-content-end" id="filterDropdown">
                        <button class="" onclick="dropFunction()">Search by location <span><i class="fa fa-chevron-down" id="dropIcon"></i></span></button>
                    </div>
                    <div class="dropdownMenu hidden-menu" id="dropdownFilterMenu">
                        <div class="accordion mt-4" id="accordionExample">
                            ' . $accordion . '
                        </div>
                    </div>
                </div>
            </div>
            <div class = "col-md-12 col-sm-12 mt-5">
                <!--<div class="grid" data-masonry= \'{ "itemSelector": ".grid-item" }\'>
                    <div class="grid-sizer"></div>
                        ' . $hotedettail . '
                    </div>
                </div>-->
                <div class="gallery img-gallery" id="masonry-grid"></div>
            </div>
        </div>
    ';
}

$jVars['module:gallery-list-all'] = $thegalnew;