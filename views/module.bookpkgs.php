<?php
$resbpkg = '';

if (defined('BOOK_PAGE')) {
    $slug = !empty($_REQUEST['slug']) ? addslashes($_REQUEST['slug']) : '';
    $sRec = Offers::find_by_slug($slug);

    if (!empty($sRec)) {
        $resbpkg .= '
		<!--<section class="breaodcrumb-area overlay-dark-2 bg-2" style="background-image:url(' . IMAGE_PATH . 'offers/' . $sRec->image . '); background-repeat: no-repeat; ">   
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="breadcrumb-text text-center">
                            <h2>Book ' . $sRec->title . '</h2>
                            <p>Welcome to Landmark Kathmandu</p>
                            <div class="breadcrumb-bar">
                                <ul class="breadcrumb">
                                    <li><a href="' . BASE_URL . 'home">Home</a></li>
                                    <li><a href="' . BASE_URL . 'offer/' . $sRec->slug . '"> ' . $sRec->title . '</a></li>
                                    <li>Book Now</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>-->
        <div class="others-head-area oha-gallery"  style="background-image:url(' . IMAGE_PATH . 'offers/' . $sRec->image . '); background-repeat: no-repeat; ">
          <div class="container">
              <div class="row">
                  <div class="col-xs-12">
                      <div class="others-head">
                          <h2 class="oh-title">' . $sRec->title . '</h2>
                      </div>
                  </div>
              </div>
          </div>
          <ul class="breadrum-list">
                <li><a href="' . BASE_URL . 'home">Home</a></li>
                <li><a href="' . BASE_URL . 'offer/' . $sRec->slug . '"> ' . $sRec->title . '</a></li>
                <li>Book Now</li>
          </ul>
      </div>
	 	<section class="container team-area pt-90">    
			<div class="row">  
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

					<div class="row">
					<div class="alert alert-success" id="msg" style="display:none;"></div>
						<form action="" method="post" id="frm-booking">
							<div class="col-lg-6 col-md-6 col-xs-12">
							<input type="hidden" name="offer_type" value="'.$sRec->type.'">
							';

        if ($sRec->type == 1) {
            $resbpkg .= '
								<table class="table">
									<tr>
										<th>Package</th>
										<th>Price(US$)</th>
										<th>Number Of People</th>
										<th>Total Amount</th>
									</tr>

									<tr class="parent">
										<td>
											<a class="text-info" href="' . BASE_URL . 'offer/' . $sRec->slug . '" target="_blank">' . $sRec->title . '</a>
											<input type="hidden" name="package_title[]" value="' . $sRec->title . '">
										</td>
										<td>
											' . $sRec->rate . '
											<input type="hidden" name="package_price[]" value="' . $sRec->rate . '">
											<input type="hidden" name="package_discount[]" value="' . $sRec->discount . '">
										</td>
										<td class="form-group col-sm-2">
											<!--<input type="text" name="no_pax[]" class="form-control"/>-->
											<select name="no_pax[]">
                                              <option value="">Select</option>
                                              ';
            for ($i = 1; $i <= $sRec->adults; $i++) {
                $resbpkg .= '<option value="' . $i . '">' . $i . '</option>';
            }
            $resbpkg .= '
                                            </select>
										</td>
										<td class="text-center totalamt">0</td>
									</tr>';
            if (!empty($sRec->discount) and $sRec->discount > 0) {
                $resbpkg .= '
                                    <tr>
										<td colspan="3">Discount (' . $sRec->discount . '%)<br>
										<small>* Discount not applicable for only 1 person</small></td>
										<td class="text-center discountamt">0</td>
									</tr>
                    ';
            }
            $resbpkg .= '
                                    <tr>
										<td colspan="3">Grand Total</td>
										<td class="text-center grand-total">0</td>
									</tr>
								</table>
								';
        }

        if ($sRec->type == 0) {
            $resbpkg .= '
								<table class="table">
									<tr>
										<th class="text-center">Choose</th>
										<th class="text-center">Price(US$)</th>
										<th class="text-center">Number Of People</th>
									</tr>
									';
            $sql = "SELECT * FROM tbl_offer_child WHERE offer_id=$sRec->id";
            $query = $db->query($sql);
            $num = $db->num_rows($query);
            if ($num > 0) {
                while ($row = $db->fetch_array($query)) {
                    $resbpkg .= '
                                    <tr class="parent">
										<td class="col-sm-3 text-center">
											<input type="radio" value="' . $row['offer_pax'] . ';;' . $row['offer_usd'] . '" name="radio_type" id="radio_type" style="height:1em;"> 
										</td>
										<td class="col-sm-3 text-center">
											' . $row['offer_usd'] . '
											<input type="hidden" name="package_title[]" value="' . $sRec->title . '">
											<input type="hidden" name="package_price[]" value="' . $row['offer_usd'] . '">
										</td>
										<td class="col-sm-3 text-center">
											<input type="text" name="no_pax[]" class="hidden" value="' . $row['offer_pax'] . '"/>
											' . $row['offer_pax'] . '
										</td>
									</tr>
                    ';
                }
            }
            $resbpkg .= '
								</table>
								';
        }

        $resbpkg .= '
							</div>

							<div class="col-lg-6 col-md-6 col-xs-12">
								<div class="row">
								<div class="form-group col-sm-6">
						            <input id="person_checkin" name="person_checkin" type="text" placeholder="Check In Date" class="form-control"/>						            
						        </div>
						        <div class="clearfix"></div>
								<div class="form-group col-sm-6">
						            <input name="person_first" type="text" placeholder="First Name" class="form-control"/>						            
						        </div>
						        <div class="form-group col-sm-6">
						            <input name="person_last" type="text" placeholder="Last Name" class="form-control"/>						            
						        </div>
						        <div class="form-group col-sm-6">
						            <input name="person_contact" type="text" placeholder="Contact No." class="form-control"/>						            
						        </div>
						        <div class="form-group col-sm-6">
						            <input name="person_email" type="text" placeholder="Email Address" class="form-control"/>						            
						        </div>
						        <div class="form-group col-sm-6">
						            <input name="person_address" type="text" placeholder="Address" class="form-control"/>						            
						        </div>
						        <div class="form-group col-sm-6">
						            <select name="person_country" class="form-control">
						            	<option value="">Choose</option>';
        $contRec = Countries::find_all();
        foreach ($contRec as $contRow) {
            $resbpkg .= '<option value="' . $contRow->country_name . '">' . $contRow->country_name . '</option>';
        }
        $resbpkg .= '</select>					            
						        </div>
						        <div class="form-group col-sm-6">
						            <input name="person_city" type="text" placeholder="City" class="form-control"/>						            
						        </div>
						        <div class="form-group col-sm-6">
						            <input name="person_zpicode" type="text" placeholder="Zip Code" class="form-control"/>						            
						        </div>
						        <div class="form-group col-sm-12">
						            <textarea name="person_message" placeholder="Message" class="form-control"></textarea>
						        </div>						        
				                <div class="form-group col-sm-6">
				        			<img src="' . BASE_URL . 'captcha/imagebuilder.php?rand=310333" border="1"  onclick="updateCaptcha(this);">						
				        		
				                    <input placeholder="Enter Security Code" type="text" class="form-control" name="userstring" maxlength="5" />
				                </div>
				                
						        <div class="form-group col-sm-12">
						        	<input type="hidden" name="trans_key" value="' . @randomKeys('10') . '"/>
									<input type="hidden" name="publishable_key" value="' . $stripe['publishable_key'] . '"/>
									<input type="hidden" name="pay_amount" value="0"/>
						            <button class="btn btn-primary pay-btn" type="submit">Submit</button>
						        </div>
</div>
							</div>
						</form>						
	   				</div>
				</div>
			</div>
		</section>';
    }
}

$jVars['module:bookpkg_detail'] = $resbpkg;