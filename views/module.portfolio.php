<?php

$provincedata = array(
    "1" => "Koshi",
    "2" => "Madhesh",
    "3" => "Bagmati",
    "4" => "Gandaki",
    "5" => "Lumbini",
    "6" => "Karnali",
    "7" => "Sudurpashchim"
);

$provinceDataId = array(
    "1" => "popover_province1",
    "2" => "popover_province2",
    "3" => "popover_bagmati",
    "4" => "popover_gandaki",
    "5" => "popover_province5",
    "6" => "popover_karnali",
    "7" => "popover_sudurpaschim"
);

/**
 *      New Portfolio page
 */
$thegalnew = '';
if (defined('PORTFOLIO_PAGE')) {
    $accordion = '';
    $firstdes = '';
    $destinationslug = !empty($_REQUEST['slug']) ? Destination::find_by_id($_REQUEST['slug']) : '';
    $provdata = !empty($destinationslug) ? $destinationslug->pradesh : 1;

    for ($i = 1; $i <= 7; $i++) {
        $provdest = Destination::get_destination_bypradesh($i);
        $accbod = '';
        $destination_nav = '';

        $expanded = ($i == $provdata) ? 'true' : 'false';
        $show = ($i == $provdata) ? 'show' : '';
        $collapsed = ($i == $provdata) ? '' : 'collapsed';

        foreach ($provdest as $j => $indest) {
            $resGallery = Gallery::getParentgallery_by_destination($indest->id);
            if (!empty($resGallery)) {
                $destination_nav = '
                    <button class="accordion-button ' . $collapsed . '" type="button" data-bs-toggle="collapse" data-bs-target="#collapse' . $i . '" aria-expanded="' . $expanded . '" aria-controls="collapse' . $i . '">
                    ' . $provincedata["$i"] . '
                    </button>
                ';
                if ($j == 0 && $i == 1) {
                    $firstdes = $indest->id;
                }
                $accbod .= '<li><a href="' . BASE_URL . 'portfolio-list/' . $indest->slug . '">' . $indest->title . '</a></li>';
            }
        }

        $accordion .= '
            <div class="accordion-item">
                <h2 class="accordion-header accord-title">
                    ' . $destination_nav . '
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

    $thegalnew = '
        <div class="row mt-6 position-relative">
            <div class="hotel_hospitality text-center main-portfolio-title">
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
                <div class="gallery img-gallery" id="masonry-grid"></div>
            </div>
        </div>
    ';
}

$jVars['module:portfolio-list-all'] = $thegalnew;


/**
 *      New Portfolio List page
 */
/**
 *      Main Gallery
 */
$thegal = $gallerylistbread = $thegalnav = '';

if (defined('PORTFOLIO_LIST_PAGE')) {
    $accordion = '';
    $firstdes = '';
    $destinationslug = !empty($_REQUEST['slug']) ? Destination::find_by_slug($_REQUEST['slug']) : '';
    $provdata = !empty($destinationslug) ? $destinationslug->pradesh : 1;

    for ($i = 1; $i <= 7; $i++) {
        $provdest = Destination::get_destination_bypradesh($i);
        $accbod = '';
        $destination_nav = '';

        $expanded = ($i == $provdata) ? 'true' : 'false';
        $show = ($i == $provdata) ? 'show' : '';
        $collapsed = ($i == $provdata) ? '' : 'collapsed';

        foreach ($provdest as $j => $indest) {
            $resGallery = Gallery::getParentgallery_by_destination($indest->id);
            if (!empty($resGallery)) {
                $destination_nav = '
                    <button class="accordion-button ' . $collapsed . ' type="button" data-bs-toggle="collapse" data-bs-target="#collapse' . $i . '" aria-expanded="' . $expanded . '" aria-controls="collapse' . $i . '">
                         ' . $provincedata["$i"] . '
                      </button>
                ';
                if ($j == 0 && $i == 1) {
                    $firstdes = $indest->id;
                }
                $accbod .= '<li><a href="' . BASE_URL . 'portfolio-list/' . $indest->slug . '">' . $indest->title . '</a></li>';
            }
        }

        $accordion .= '
                <div class="accordion-item">
                    <h2 class="accordion-header accord-title">
                      ' . $destination_nav . '
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
    $destinationRec = Destination::find_by_slug($_REQUEST['slug']);

    $desthot = Gallery::getParentgallery_by_destination($destinationRec->id);

    $hotedettail = '';
    if (!empty($desthot)) {
        foreach ($desthot as $indhot) {
            // $gallRec = GalleryImage::getGalleryImages($indhot->id);
            // pr($indhot);
            $file_path = SITE_ROOT . 'images/gallery/' . $indhot->image;
            if (file_exists($file_path) and !empty($indhot->image)) {
                $hotedettail .= ' 
                    <div class="grid-item inner-images">
                        <a href="' . BASE_URL . 'portfolio/' . $indhot->slug . '">
                            <div class="forname">' . $indhot->title . '</div>
                            <img src="' . IMAGE_PATH . 'gallery/' . $indhot->image . '" class="gallery-image"/>
                        </a>
                     </div>
                ';
            } else {
                $hotedettail .= ' 
                    <div class="grid-item logo__background">
                        <a href="' . BASE_URL . 'portfolio/' . $indhot->slug . '">
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
            <div class="hotel_hospitality text-center main-portfolio-title">
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
            <div class = "col-md-12 col-sm-12 mt-5 img-gallery-container">
                <div class="grid" style="display:none;" data-masonry= \'{ "itemSelector": ".grid-item" }\'>
                <div class="grid-sizer"></div>
                    ' . $hotedettail . '
                </div>
            </div>
        </div>
    ';


}

$jVars['module:portfolio-list'] = $thegal;


/**
 *      Portfolio detail page
 */
$thegal = $gallerylistbread = $thegalnav = '';

if (defined('PORTFOLIO_DETAIL')) {
    $accordion = '';
    $firstdes = '';

    $id = !empty($_REQUEST['slug']) ? $_REQUEST['slug'] : '';
    $indhot = Gallery::find_by_slug($id);
    $gallRec = GalleryImage::getGalleryImages($indhot->id);

    $gallcoll = '';
    foreach ($gallRec as $row1) {
        $file_path = SITE_ROOT . 'images/gallery/galleryimages/' . $row1->image;
        if (file_exists($file_path) and !empty($row1->image)):
            $gallcoll .= ' 
                <div class="grid-item inner-images">
                    <a href="' . IMAGE_PATH . 'gallery/galleryimages/' . $row1->image . '">
                      <img src="' . IMAGE_PATH . 'gallery/galleryimages/' . $row1->image . '" alt="' . $row1->title . '" class="gallery-image">
                    </a> </div>
                ';
        endif;
    }

    $thegal = '
        <div class="hotel_decrown_inn container-fluid">
            <div class="row mt-6">
                <div class="col-lg-12 position-relative">
                    <div class="hotel_hospitality text-center inner-portfolio-title">
                        <h2>' . $indhot->title . '</h2>
                        <!--<p>' . strip_tags($indhot->content) . '</p>-->
                    </div>

                    <div class="goback-btn-parent">
                        <div class="goback-btn-container">
                        <a href="' . BASE_URL . 'portfolio-list/' . Destination::field_by_id($indhot->destinationId, 'slug') . '" class="goback-btn"><i class="fa fa-arrow-left"></i> Get Back</a>
                        </div>
                    </div>
                    <div class = "mt-4" id="lightgallery">
                        <div class="grid"style="display:none;">
                            <div class="grid-sizer"></div>
                            ' . $gallcoll . '
                        </div>
                    </div>
                </div>
            </div>
        </div>
    ';
}

$jVars['module:portfolio-detail'] = $thegal;


/**
 *      Home Page Nepal SVG
 */
$home_svg = '';

if (defined('HOME_PAGE')) {
    $states = '';
    for ($i = 1; $i <= 7; $i++) {
        $provdest = Destination::get_destination_bypradesh($i);

        $states_li = '';
        foreach ($provdest as $j => $indest) {
            $resGallery = Gallery::getParentgallery_by_destination($indest->id);
            if (!empty($resGallery)) {
                $states_li .= '<li>' . $indest->title . '</li>';
            }
        }

        if (!empty($states_li)) {
            $states .= '
                <div id="' . $provinceDataId[$i] . '">
                    <ul class="p-0 m-0">
                        ' . $states_li . '
                    </ul>
                </div>
            ';
        }
    }

    $home_svg .= '
        <div class="svg-container container">
            <object data="' . BASE_URL . 'template/web/image/nepal.svg" type="image/svg+xml" id="svgObject"></object>
            ' . $states . '
        </div>
    ';
}

$jVars['module:portfolio-home-svg'] = $home_svg;