<?php 
$resbking='';
$resbtnlink='';

$booking_type = Config::getField('book_type', true);
$booking_page = Config::getField('hotel_page', true);
$booking_code = Config::getField('hotel_code', true);
$chk_in  = date('Y-m-d');
$chk_out = date('Y-m-d', strtotime("+1 day"));

// Default Reservation
if($booking_type==1) {
    $resbking.='<div class="mad-form-col">
    <a href="'.BASE_URL.'/reservation" class="book_now_btn" target="_blank"><button type="submit" class="btn btn-huge">
            Book Now
        </button></a>
    </div>';

    // Bottom link
    $resbtnlink.='<a class="book_now_btn" href="'.BASE_URL.'reservation" target="_blank">Reserve now</a>';  
}

// Nepalhotel 
if($booking_type==2) {
    $resbking.='<!--================ Layer ================-->
    <div data-start="0" data-x="center"  data-y="center" data-textAlign="[\'center\']"  data-voffset="[\'120\', \'120\', \'120\', \'120\']"  data-width="[\'98%\', \'98%\', \'98%\', \'98%\']" class="tp-caption tp-resizeme home-book-btn">
<div class="rev-mad-form">
<form  action="result.php" target="_blank" action="rooms_2_col_gallery_v1.html" class="mad-form">
        <input type="hidden" name="hotel_code" value="'. $booking_code .'">
    <div class="mad-form-row">
        <div class="mad-form-col">
            <label>Arrival Date</label>
            <div class="mad-datepicker">
                <div class="mad-datepicker-body">
                    <input type="text" class="form-control input " placeholder="Check in" id="checkin" name="hotel_check_in">
                </div>

                
            </div>
        </div>

        <div class="mad-form-col">
            <label>Departure Date</label>
            <div class="mad-datepicker">
                <div class="mad-datepicker-body">
                    <input type="text" class="form-control input " placeholder="Check out" id="checkout" name="hotel_check_out">
                </div>

                
            </div>
        </div>


        <div class="mad-form-col">
        <a href="'.BASE_URL.'result.php?hotel_code='.$booking_code.'" class="book_now_btn" target="_blank"><button type="submit" class="btn btn-huge">
                Book Now
            </button></a>
        </div>
    </div>
</form>
</div>
</div>';

    // Bottom link
    $resbtnlink.='<a href="'.BASE_URL.'result.php?hotel_code='.$booking_code.'" class="book_now_btn" target="_blank">Reserve now</a>';
}

// Fastbooking
if($booking_type==3) {
    $day = date("d");
    $resbking.='
   
<!--================ End of Layer ================--> 
</div>';

    // Bottom link
    $resbtnlink.='<a href="http://www.fastbookings.biz/DIRECTORY/'.$booking_page.'?s=results&Clusternames='.$booking_code.'&Hotelnames='.$booking_code.'" class="btn btn-medium btn-darkbrown" target="_blank">Book now</a>';
}

// Booking.com
if($booking_type==4) { 
    $resbking.='<form action="http://www.booking.com/hotel/np/'.$booking_page.'" method="get" target="booking_popup" id="booking-form">
        <ul>
            <li>&nbsp;</li>
            <li>
                <i class="fa fa-calendar-plus-o"></i>  
                <input name="check_in" type="text" id="checkin" class="input-control border-white" placeholder="Check In" value="'.$chk_in.'"/>
            </li>
            <li>
                <i class="fa fa-calendar-plus-o"></i>  
                <input name="check_out" type="text" id="checkout" class="input-control border-white" placeholder="Check Out" value="'.$chk_out.'"/>
            </li>
            <li>
                <input type="hidden" name="aid" value="330843" />
                <input type="hidden" name="hotel_id" value="'.$booking_code.'" />
                <input type="hidden" name="lang" value="en" />
                <input type="hidden" name="pb" value="" />
                <input type="hidden" name="stage" value="0" />
                <input type="hidden" name="hostname" value="www.booking.com" />
                <input type="hidden" name="checkin_monthday" class="checkin-monthday" value="'.date('d').'" />
                <input type="hidden" name="checkin_year_month" class="checkin-year-month" value="'.date('Y-m').'" />
                <input type="hidden" name="checkout_monthday" class="checkout-monthday" value="'.date('d', strtotime('+1 day')).'" />
                <input type="hidden" name="checkout_year_month" class="checkout-year-month" value="'.date('Y-m').'" />       
                <button id="btn-book" class="btn btn-large btn-darkbrown">Book now</button>
            </li>
            <li>&nbsp;</li>
        </ul>
    </form>';

    // Bottom link
    $resbtnlink.='<a href="http://www.booking.com/hotel/np/'.$booking_page.'?aid='.$booking_code.'" class="btn btn-medium btn-darkbrown" target="_blank">Book now</a>';
}

$jVars['module:booking-form'] = $resbking;
$jVars['module:book-bottom-link'] = $resbtnlink;

$script='';

// Fastbooking
if($booking_type==3) {
    $script.= '<script type="text/javascript" src="'.JS_PATH.'fastbooking/fbparam.js"></script>'."\n";
    $script.= '<script type="text/javascript" src="'.JS_PATH.'fastbooking/fblib.js"></script>'."\n";
    $script.= '<script type="text/javascript" src="'.JS_PATH.'fastbooking/fbfulltrack.js"></script>'."\n";
}

$jVars['footer:script'] = $script;



$booking_undergallery = '      
<div class="date_box_wrapper">
    <div class="date_pickers date__ajax">
      <div class="container">
          <form action="">
          <div class="row gx-3 justify-content-center">
          <div class="col-md-3 mb-3 mb-sm-0">
            <div class="form-group position-relative">
              <input type="text" class="form-control " id="Check_in" placeholder="Check In" class="pt-3">
              <i class="fa-regular fa-calendar-check icon_calender"></i>
            </div>
          </div>
          <div class="col-md-3 mb-3 mb-sm-0">
            <div class="form-group position-relative">
              <input type="text" class="form-control" id="Check_out" placeholder="Check Out" class="pt-3">
              <i class="fa-regular fa-calendar-check icon_calender"></i>
            </div>
          </div>
          <div class="col-md-2">
            <button type="submit" id="book_now" class="btn btn__action w-100">Book Now</button>
          </div>
          </div>
          </form>
            </div>
      </div>
  </div>
       

';


$jVars['module:booking_undergallery'] = $booking_undergallery;