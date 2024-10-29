<?php
require_once("includes/initialize.php");

$usermail   = User::get_UseremailAddress_byId(1);
$usermail   = User::field_by_id(1, 'hr_email');
$ccusermail = User::field_by_id(1, 'optional_email');
$sitename   = Config::getField('sitename', true);

foreach ($_REQUEST as $key => $val) {$$key = $val;}

$fullname   = $fname . " " . $lname;

$body = '
    <table width="100%" border="0" cellpadding="0" style="font:12px Arial, serif;color:#222;">
        <tr>
            <td><p>Dear Sir,</p></td>
        </tr>
        <tr>
            <td>
                The details provided by the applicant are:</p>
                <p>
                    <strong>Fullname</strong> : ' . $fullname . '<br />		
                    <strong>E-mail Address</strong>: ' . $email . '<br />
                    <strong>Contact No.</strong>: ' . $phone . '<br />
                    <strong>Career</strong>: ' . $career . '<br />
                    <strong>CV</strong>: <a href="' . IMAGE_PATH . 'career/' . $fileArrayname . '">' . $fileArrayname . '</a><br/>
                    <strong>Photo</strong>: <a href="' . IMAGE_PATH . 'career/' . $fileArrayname1 . '">' . $fileArrayname1 . '</a><br/>
                    <strong>Citizenship</strong>: <a href="' . IMAGE_PATH . 'career/' . $fileArrayname2 . '">' . $fileArrayname2 . '</a><br/>
                    <strong>Cover Letter / Application</strong>: <a href="' . IMAGE_PATH . 'career/' . $fileArrayname3 . '">' . $fileArrayname3 . '</a><br/>
                </p>
            </td>
        </tr>
        <tr>
            <td>
                <p>&nbsp;</p>
                <p>Thank you,<br />' . $fullname . '</p>
            </td>
        </tr>
    </table>
	';

$record = new Applicant();
$record->fullname   = $fullname;
$record->email      = $email;
$record->mobile     = $phone;
$record->position   = $career;
$record->myfile     = $fileArrayname;
$record->photo      = $fileArrayname1;
$record->citizenship    = $fileArrayname2;
$record->cover_letter   = $fileArrayname3;
$record->sortorder  = Applicant::find_maximum();

$db->begin();
$record->save();
$db->commit();

if ($_POST['action'] == "forcareer"):
    $mail = new PHPMailer(); // defaults to using php "mail()"

    $mail->SetFrom($email, $fullname);
    $mail->AddReplyTo($email, $fullname);

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

//    $type = explode(".", $record->myfile);
//    if ($type[1] == 'pdf') {
//        $file_attach = '';
//    } else {
//        $file_attach = SITE_ROOT . 'images/career/' . $fileArrayname;
//    }

    $mail->Subject = 'Application mail from ' . $fullname . ' for Photo Longtail';
//    $file_to_attach = $file_attach;
    $mail->MsgHTML($body);
// 	$mail->AddAttachment( $file_to_attach , $fileArrayname );
//    if ($type[1] != 'pdf') {
//        $mail->AddAttachment($file_to_attach);
//    }

    $attach1 = SITE_ROOT . 'images/career/' . $record->myfile;
    $attach2 = SITE_ROOT . 'images/career/' . $record->photo;
    $attach3 = SITE_ROOT . 'images/career/' . $record->citizenship;
    $attach4 = SITE_ROOT . 'images/career/' . $record->cover_letter;

    $mail->AddAttachment($attach1);
    $mail->AddAttachment($attach2);
    $mail->AddAttachment($attach3);
    $mail->AddAttachment($attach4);


    if (!$mail->Send()) {
        echo json_encode(array("action" => "unsuccess", "message" => "We could not sent your request at the time. Please try again later."));
    } else {
        echo json_encode(array("action" => "success",
            "message" => "Thank you for submitting your CV. We appreciate your interest in joining our team. Our HR team will review your application, and if your qualifications match our requirements, we will contact you for the next steps."));
    }
endif;
