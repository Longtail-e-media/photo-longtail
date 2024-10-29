<?php 
	// Load the header files first
	header("Expires: 0"); 
	header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT"); 
	header("cache-control: no-store, no-cache, must-revalidate"); 
	header("Pragma: no-cache");

	// Load necessary files then...
	require_once('../initialize.php');
	
	$action = $_REQUEST['action'];

	switch($action) 
	{			
		// case "slug":
		// 	$slug=$msg='';
		// 	if(!empty($_REQUEST['title'])) {
		// 		$nslug = create_slug($_REQUEST['title']);	
		// 		$chk = check_slug($_REQUEST['actid'], $nslug);
		// 		if($chk=='1') {					
		// 			$msg="Slug already exists !";				
		// 		}
		// 		else {
		// 			$slug = $nslug;					
		// 		}				
		// 	}
		// 	echo json_encode(array('msgs'=>$msg, 'result'=>$slug));
		// 	break;
		case "add":	
			$record = new Nearby();
			
			$record->slug 		= $_REQUEST['slug'];
			$record->title 		= $_REQUEST['title'];
			// $record->sub_title 		= $_REQUEST['sub_title'];
			$record->image		= serialize(array_values(array_filter($_REQUEST['imageArrayname'])));		
//			$record->linksrc 	= $_REQUEST['linksrc'];
//			$record->linktype 	= $_REQUEST['linktype'];
			// $record->content	= $_REQUEST['content'];
			$record->embed_link	= $_REQUEST['embed_link'];
			$record->status		= $_REQUEST['status'];
			// $record->homepage	= $_REQUEST['homepage'];
			$record->meta_title		= $_REQUEST['meta_title'];
			$record->meta_keywords		= $_REQUEST['meta_keywords'];
			$record->meta_description	= $_REQUEST['meta_description'];
			$record->sortorder	= Nearby::find_maximum();
			$record->added_date = registered();
			$record->modified_date = registered();
			
			$record->distance 		= $_REQUEST['distance'];
			
			
			$checkDupliName=Nearby::checkDupliName($record->title);			
			if($checkDupliName):
				echo json_encode(array("action"=>"warning","message"=>"Articles Title Already Exists."));		
				exit;		
			endif;
			$db->begin();
			if($record->save()): $db->commit();
			// Global slug table storeSlug(class name, main slug, store id);
			$act_id = $db->insert_id();
			storeSlug('Article', $_REQUEST['slug'], $act_id);
			// End function
			$message  = sprintf($GLOBALS['basic']['addedSuccess_'], "Article '".$record->title."'");
			echo json_encode(array("action"=>"success","message"=>$message));
			log_action($message,1,3);
		else: 
			$db->rollback(); echo json_encode(array("action"=>"error","message"=>$GLOBALS['basic']['unableToSave']));
		endif;
		break;
		
		case "edit":
			$record = Nearby::find_by_id($_REQUEST['idValue']);
			
			if($record->title!=$_REQUEST['title']){
				$checkDupliName=Nearby::checkDupliName($_REQUEST['title']);
				if($checkDupliName):
					echo json_encode(array("action"=>"warning","message"=>"Articles title is already exist."));		
					exit;		
				endif;
			}
			
			// $record->slug 		= $_REQUEST['slug'];
			$record->title 		= $_REQUEST['title'];
			// $record->sub_title 		= $_REQUEST['sub_title'];
			$record->image		= serialize(array_values(array_filter($_REQUEST['imageArrayname'])));	
			//			$record->linksrc 	= $_REQUEST['linksrc'];
			//			$record->linktype 	= $_REQUEST['linktype'];
			// $record->content	= $_REQUEST['content'];
			$record->embed_link	= $_REQUEST['embed_link'];
			$record->status		= $_REQUEST['status'];
			// $record->homepage	= $_REQUEST['homepage'];
			$record->meta_title		= $_REQUEST['meta_title'];
			$record->meta_keywords		= $_REQUEST['meta_keywords'];
			$record->meta_description	= $_REQUEST['meta_description'];
			$record->modified_date      = registered();

			$record->distance 		= $_REQUEST['distance'];

			$db->begin();
			if($record->save()):$db->commit();
				// Global slug table storeSlug(class name, main slug, store id);
				$act_id = $_REQUEST['idValue'];
				// storeSlug('Article', $_REQUEST['slug'], $act_id);
				// End function
			   	$message  = sprintf($GLOBALS['basic']['changesSaved_'], "Article '".$record->title."'");
			   	echo json_encode(array("action"=>"success","message"=>$message));
			   	log_action($message,1,4);
			else: $db->rollback();echo json_encode(array("action"=>"notice","message"=>$GLOBALS['basic']['noChanges']));
			endif;
		break;
			
		case "delete":
			$id = $_REQUEST['id'];
			$record = Nearby::find_by_id($id);
			// Global slug table deleteSlug(class name, store id);
			// deleteSlug('Article', $id);
			// End function
			$db->begin();
			$res = $db->query("DELETE FROM tbl_nearby WHERE id='{$id}'");
			if($res):$db->commit();	else: $db->rollback();endif;
			reOrder("tbl_nearby", "sortorder");
			$message  = sprintf($GLOBALS['basic']['deletedSuccess_'], "Article '".$record->title."'");
			echo json_encode(array("action"=>"success","message"=>$message));	
			log_action("Articles  [".$record->title."]".$GLOBALS['basic']['deletedSuccess'],1,6);
		break;
		
		// Module Setting Sections  >> <<
		case "toggleStatus":
			$id = $_REQUEST['id'];
			$record = Nearby::find_by_id($id);
			$record->status = ($record->status == 1) ? 0 : 1 ;
			$record->save();
			echo "";
		break;
			
		case "bulkToggleStatus":
			$id = $_REQUEST['idArray'];
			$allid = explode("|", $id);
			$return = "0";
			for($i=1; $i<count($allid); $i++){
				$record = Nearby::find_by_id($allid[$i]);
				$record->status = ($record->status == 1) ? 0 : 1 ;
				$record->save();
			}
			echo "";
		break;
			
		case "bulkDelete":
			$id = $_REQUEST['idArray'];
			$allid = explode("|", $id);
			$return = "0";
			$db->begin();
			for($i=1; $i<count($allid); $i++){
				$res  = $db->query("DELETE FROM tbl_nearby WHERE id='".$allid[$i]."'");
                // deleteSlug('Article', $allid[$i]);
				$return = 1;
			}
			if($res)$db->commit();else $db->rollback();
			reOrder("tbl_nearby", "sortorder");
			
			if($return==1):
			    $message  = sprintf($GLOBALS['basic']['deletedSuccess_bulk'], "Article"); 
				echo json_encode(array("action"=>"success","message"=>$message));
			else:
				echo json_encode(array("action"=>"error","message"=>$GLOBALS['basic']['noRecords']));
			endif;
		break;
			
		case "sort":			
			$id 	 = $_REQUEST['id']; 	// IS a line containing ids starting with : sortIds
			$sortIds = $_REQUEST['sortIds'];
			datatableReordering('tbl_nearby', $sortIds, "sortorder", '','',1);
			$message  = sprintf($GLOBALS['basic']['sorted_'], "Article"); 
			echo json_encode(array("action"=>"success","message"=>$message));
		break;
	}
?>