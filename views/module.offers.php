<?php 
$resoffr='';
$resrandoffr='';

    $offrRec = Offers::get_offer_by();
    if($offrRec) {
        $resoffr.='<div class="l_news_item owl-carousel">';

                foreach($offrRec as $offrRow) {
                    $file_path = SITE_ROOT.'images/offers/'.$offrRow->image;
                    if(file_exists($file_path) and !empty($offrRow->image)) {

                        $resoffr.='<div class="item">
                                        <a href="'.$offrRow->linksrc.'" class="news_img">
                                            <img src="'.IMAGE_PATH.'offers/'.$offrRow->image.'" alt="" class="img-responsive">
                                        </a>
                                        <div class="news_text">
                                            <a href="'.$offrRow->linksrc.'">
                                                <h4>'.$offrRow->title.'</h4>
                                            </a>
                                            <p>'.strip_tags($offrRow->content).'</p>
                                            <a class="news_more" href="'.$offrRow->linksrc.'">Read more</a>
                                        </div>
                                    </div>';
                    }
                }

            $resoffr.='</div>';
    }

    // Rand offer
    $randRec = Offers::get_offer_rand();
    if(!empty($randRec)) {
        $file_path = SITE_ROOT.'images/offers/'.$randRec->image;
        if(file_exists($file_path) and !empty($randRec->image)) {
            $linkTarget = ($randRec->linktype == 1)? ' target="_blank" ' : ''; 
            $linksrc    = ($randRec->linktype != 1)? BASE_URL.$randRec->linksrc : $randRec->linksrc;
            $linkstart  = ($randRec->linksrc!='')? '<a href="'.$linksrc.'" '.$linkTarget.'>' : '<a href="javascript:void(0);">';
            $linkend    = ($randRec->linksrc!='')? '</a>' : '</a>' ;
            $resrandoffr.='<div class="section panel">
                <div class="item fade">
                    <div class="back" data-image="'.IMAGE_PATH.'offers/'.$randRec->image.'"></div>
                    <div class="panel-button">
                        <div class="button-container">
                            '.$linkstart.$randRec->title.$linkend.'
                            <span>Our Offer <i class="icon ion-ios-arrow-right"></i>
                        </div>
                    </div>
                </div>

            </div>';
        }
    }

$jVars['module:offers-list'] = $resoffr;
$jVars['module:offers-rand'] = $resrandoffr;