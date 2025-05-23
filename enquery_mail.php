<?php
require_once("includes/initialize.php");
$usermail = User::get_UseremailAddress_byId(1);
$ccusermail = User::field_by_id(1, 'optional_email');
$sitename = Config::getField('sitename', true);

foreach ($_POST as $key => $val) {
  $$key = $val;
}
if ($_POST['action'] == "cont_form"):


    foreach ($_POST as $key => $val) {
        $$key = $val;
    }

    // $name = $fname . ' ' . $lname;

    $body = '
        <table width="100%" border="0" cellpadding="0" style="font:12px Arial, serif;color:#222;">
            <tr>
                <td><p>Dear Sir,</p></td>
            </tr>
            <tr>
                <td>
                    <p>
                        <span style="color:#0065B3; font-size:14px; font-weight:bold">Inquiry message</span><br />
                        The details provided are:
                    </p>
                    <p>
                        <strong>Fullname</strong> : ' . $name . '<br />		
                        <strong>E-mail Address</strong>: ' . $email . '<br />
                        <strong>Phone</strong>: ' . $contact . '<br />
                        <strong>Subject</strong>: ' . $subject . '<br />
                        <strong>Message</strong>: ' . $message . '<br />
                    </p>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Thank you,<br />
                    ' . $name . '
                    </p>
                </td>
            </tr>
        </table>
	';

    /*
    * mail info
    */

    $mail = new PHPMailer(); // defaults to using php "mail()"

    $mail->SetFrom($email, $name);
    $mail->AddReplyTo($email, $name);

    $mail->AddAddress($usermail, $sitename);
    // if add extra email address on back end
    if (!empty($ccusermail)) {
        $rec = explode(';', $ccusermail);
        if ($rec) {
            foreach ($rec as $row) {
                $mail->AddCC($row, $sitename);
            }
        }
    }

    $mail->Subject = 'Inquiry mail from ' . $name;

    $mail->MsgHTML($body);

    if (!$mail->Send()) {
        echo json_encode(array("action" => "unsuccess", "message" => "We could not sent your message at the time. Please try again later."));
    } else {
        echo json_encode(array("action" => "success", "message" => "Your inquiry has been successfully sent."));
    }
endif;
if ($_POST['action'] == "hall_form"):

    foreach ($_POST as $key => $val) {
        $$key = $val;
    }

    // $name = $fname . ' ' . $lname;

    $body = '
        <table width="100%" border="0" cellpadding="0" style="font:12px Arial, serif;color:#222;">
            <tr>
                <td><p>Dear Sir,</p></td>
            </tr>
            <tr>
                <td>
                    <p>
                        <span style="color:#0065B3; font-size:14px; font-weight:bold">Inquiry message</span><br />
                        The details provided are for hall '.$hall.':
                    </p>
                    <p>
                        <strong>Fullname</strong> : ' . $name . '<br />		
                        <strong>E-mail Address</strong>: ' . $email . '<br />
                        <strong>Phone</strong>: ' . $contact . '<br />
                        <strong>Subject</strong>: ' . $subject . '<br />
                        <strong>Name Of Event</strong>: ' . $event . '<br />
                        <strong>No of Pax</strong>: ' . $pax . '<br />
                        <strong>Message</strong>: ' . $message . '<br />
                    </p>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Thank you,<br />
                    ' . $name . '
                    </p>
                </td>
            </tr>
        </table>
	';

    /*
    * mail info
    */

    $mail = new PHPMailer(); // defaults to using php "mail()"

    $mail->SetFrom($email, $name);
    $mail->AddReplyTo($email, $name);

    $mail->AddAddress($usermail, $sitename);
    // if add extra email address on back end
    if (!empty($ccusermail)) {
        $rec = explode(';', $ccusermail);
        if ($rec) {
            foreach ($rec as $row) {
                $mail->AddCC($row, $sitename);
            }
        }
    }

    $mail->Subject = 'Inquiry mail from ' . $name;

    $mail->MsgHTML($body);

    if (!$mail->Send()) {
        echo json_encode(array("action" => "unsuccess", "message" => "We could not sent your message at the time. Please try again later."));
    } else {
        echo json_encode(array("action" => "success", "message" => "Your inquiry has been successfully sent."));
    }
endif;


if ($_POST['action'] == "forHall"):
  $body = '
      <table width="100%" border="0" cellpadding="0" style="font:12px Arial, serif;color:#222;">
          <tr>
              <td><p>Dear Sir,</p></td>
          </tr>
          <tr>
              <td>
                  <p>
                      <span style="color:#0065B3; font-size:14px; font-weight:bold">Online Reservation Inquiry message</span><br />
                      The details provided are:
                  </p>
                  <p>
                      <strong>Event Date</strong> : ' . $event_date . '<br />		
                      <strong>Pax</strong> : ' . $pax . '<br />		
                      <strong>Event Time</strong> : ' . $event_time . '<br />		
  ';
  if (!empty($rooms)) {
      $body .= '<strong>Rooms for the Event?</strong> : ' . $rooms . ' <br />';
  }
  $body .= '
                      <strong>Name</strong> : ' . $name . '<br />		
                      <strong>E-mail Address</strong>: ' . $email . '<br />
                      <strong>Phone</strong>: ' . $phone . '<br />
                  </p>
              </td>
          </tr>
          <tr>
              <td>
                  <p>Thank you,<br />
                  ' . $name . '
                  </p>
              </td>
          </tr>
      </table>
';

  $mail = new PHPMailer();
  $mail->SetFrom($email, $name);
  $mail->AddReplyTo($email, $name);
  $mail->AddAddress($usermail, $sitename);
  if (!empty($ccusermail)) {
      $rec = explode(';', $ccusermail);
      if ($rec) {
          foreach ($rec as $row) {
              $mail->AddCC($row, $sitename);
          }
      }
  }

  $mail->Subject = 'Online Reservation Inquiry mail from ' . $name;
  $mail->MsgHTML($body);

  if (!$mail->Send()) {
      echo json_encode(array("action" => "unsuccess", "message" => "We could not sent your Inquiry at the time. Please try again later."));
  } else {
      echo json_encode(array("action" => "success", "message" => "Your Inquiry has been successfully sent."));
  }
endif;


?>