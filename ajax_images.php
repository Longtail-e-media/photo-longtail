<?php
ini_set('display_startup_errors', 1);
ini_set('display_errors', 1);

require_once("includes/initialize.php");
$siteRegulars = Config::find_by_id(1);

// Pagination settings
$page = isset($_GET['page']) ? intval($_GET['page']) : 1;
$limit = 6; // Number of images per page
$offset = ($page - 1) * $limit;

// Query to fetch random images from the tbl_gallery_images table
$sql = "SELECT * FROM tbl_gallery_images ORDER BY RAND() LIMIT $limit OFFSET $offset";
// $sql = "SELECT * FROM tbl_gallery_images ORDER BY sortorder DESC LIMIT $limit OFFSET $offset";
$desthot = GalleryImage::find_by_sql($sql);

// Check if there are results
if (!empty($desthot)) {
    $idIncrement = 0;
    foreach ($desthot as $indhot) {
        $idIncrement = rand(1000,9999);
        // $gallRec = GalleryImage::getGalleryImages($indhot->id);
        $file_path = SITE_ROOT . 'images/gallery/galleryimages/' . $indhot->image;
        $propertyName = Gallery::field_by_id($indhot->galleryid, 'title');
        $propertySlug = Gallery::field_by_id($indhot->galleryid, 'slug');
        if (file_exists($file_path) and !empty($indhot->image)) {
            echo ' 
                    <div class="grid-item">
                    <div class="zoom-img-container" id="lightGallery'.$idIncrement.'">
                        <a href="' . IMAGE_PATH . 'gallery/galleryimages/' . $indhot->image . '" class="zoom-img">
                            <!--<img src="' . IMAGE_PATH . 'gallery/galleryimages/' . $indhot->image . '" class="gallery-image"/>-->
                            <!-- using CDN for image -->
                            <img src="https://ik.imagekit.io/1jwfh3p6k9/gallery/galleryimages/' . $indhot->image . '?f-auto" class="gallery-image"/>
                        </a>
                    </div>
                        <a href="' . BASE_URL . 'portfolio/' . $propertySlug . '">
                            <div class="fortitle gallery-img-title">' . $indhot->title . '</div>
                            <div class="forname gallery-img-content">' . $propertyName . '</div>
                        </a>
                     </div>
                 ';
        } else {
            echo ' 
                    <div class="grid-item">
                        <a href="' . BASE_URL . 'portfolio/' . $propertySlug . '">
                            <div class="fortitle">' . $indhot->title . '</div>
                            <div class="forname">' . $indhot->title . '</div>
                            <img src="' . IMAGE_PATH . 'preference/other/' . $siteRegulars->other_upload . '" />
                        </a>
                     </div>
                ';
        }
    }
}