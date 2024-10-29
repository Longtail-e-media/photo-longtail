<?php
/*
* Contact form
*/
$rescont = $innerbred = '';
$img = '';
if (defined('CONTACT_PAGE')) {


    $siteRegulars = Config::find_by_id(1);

    $tellinked = '';
    $telno = explode("/", $siteRegulars->contact_info);
    $lastElement = array_shift($telno);
    $tellinked .= '<a href="tel:' . $lastElement . '" target="_blank">' . $lastElement . '</a>/';
    foreach ($telno as $tel) {
        $tellinked .= '<a href="tel:+977-' . $tel . '" target="_blank">' . $tel . '</a>';
        if (end($telno) != $tel) {
            $tellinked .= '/';
        }
    }
    $imglink = $siteRegulars->contact_upload;
    if (!empty($imglink)) {
        $img = IMAGE_PATH . 'preference/contact/' . $siteRegulars->contact_upload;
    } else {
        $img = '';
    }

    $phone_tel = '';
    $phones = explode(',', $siteRegulars->address);
    foreach ($phones as $phone) {
        $phone_tel .= '<a href="tel:+' . $phone . '" target="_blank">' . $phone . '</a>';
        $phone_tel .= (end($phones) != $phone) ? '/' : '';
    }
    // pr($siteRegulars);
    $rescont .= '
       <!-- <div class="contact_banner_image text-center" 
            style="background: linear-gradient(90deg, rgba(0, 0, 0, 0.4234068627) 0%, rgba(0, 0, 0, 0.3169642857) 100%), url(' . $img . ');background-size: cover; background-position: center; height: 300px; text-transform: uppercase; display: grid; place-items: center;">
            <nav aria-label="breadcrumb">
                <h2 class="text-white">Contact</h2>
                <ol class="breadcrumb text-white">
                  <li class="breadcrumb-item"><a href="/" class="text-white text-decoration-none">Home</a></li>
                  <li class="breadcrumb-item text-white active" aria-current="page">Contact</li>
                </ol>
            </nav>
        </div> -->
        
        <div class="container margin_20">
        <div class="text-wrapper mb-4 contact-title">
                <h5 class="mt-4 text-uppercase text-center">Contact Us</h5>
            </div>
          <div class="contact_form">
            <div class="row gx-md-5">
              <div class="col-lg-6 col-md-6 col-sm-12 contact_background-color">
                <h2 class="Contact_us">Message Us</h2>
                <form action="" id="contact_form">
                  <div class="mb-4">
                    <input type="text" class="form-control" id="" name="name" aria-describedby="name" placeholder="Full Name">
                  </div>
                  <div class="mb-4">
                    <input type="email" class="form-control" id="" name="email" aria-describedby="name" placeholder="Email">
                  </div>
                  <div class="mb-4">
                    <input type="text" class="form-control" id="" name="contact" aria-describedby="name"
                           placeholder="Contact No.">
                  </div>
                  <div class="mb-4">
                    <input type="Subject" class="form-control" id="" name="subject" aria-describedby="subject"
                           placeholder="Subject">
                  </div>
                  <div class="mb-4">
                    <textarea class="form-control" id="textarea" rows="3" name="message" Placeholder="Message"></textarea>
                  </div>
                  <div class="mb-4">
                    <div id="result_msg"></div>
                  </div>
                  <div class="mb-4">
                    <div class="g-recaptcha" data-sitekey="6Le1L28qAAAAAOGnTw-YqSD8NVjElmlLAIRbQwgV"></div>
                  </div>
                  <button type="submit" id="submit" class="btn enquiry_btn contact-btn">Submit</button>
                </form>
        
              </div>
              <div class="col-lg-6 col-md-6 col-sm-12 py-5">
                <h2 class="contact__information">Contact Address</h2>
                <ul class="list-unstyled">
                  <li><i class="fa-solid fa-location-dot"></i>&nbsp;&nbsp;' . $siteRegulars->fiscal_address . '</li>
                  <!--<li><i class="fa-solid fa-phone"></i>&nbsp;&nbsp;' . $tellinked . '</li>-->
                  <li><i class="fa-solid fa-mobile"></i>&nbsp;&nbsp;' . $phone_tel . '</li>
                  <li><i class="fa-solid fa-envelope"></i>&nbsp;&nbsp;<a href="mailto:' . $siteRegulars->email_address . '">' . $siteRegulars->email_address . '</a></li>
                </ul>
                <div class="google_map mt-5">
                  <iframe src="' . $siteRegulars->location_map . '"></iframe>
                </div>
              </div>
            </div>
          </div>
        </div>

    ';
}

$jVars['module:contact-us'] = $rescont;
