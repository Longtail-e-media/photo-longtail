<?php
$submoduleTablename = "tbl_gallery_images"; // Database table name
?>
<h3>
    List Images
</h3>
<div class="my-msg"></div>
<div class="example-box">
    <div class="example-code">
        <table cellpadding="0" cellspacing="0" border="0" class="table" id="exampleImages">
            <thead>
            <tr>
                <th style="display:none;"></th>
                <th class="text-center"><input class="check-all" type="checkbox"/></th>
                <th class="text-center">Title</th>
                <th class="text-center">Property</th>
                <th class="text-center"><?php echo $GLOBALS['basic']['action']; ?></th>
            </tr>
            </thead>

            <tbody>
            <?php $records = GalleryImage::find_by_sql("SELECT * FROM " . $submoduleTablename . " ORDER BY sortorder DESC ");
            foreach ($records as $k => $record): ?>
                <tr id="<?php echo $record->id; ?>">
                    <td style="display:none;"><?php echo $k + 1; ?></td>
                    <td><input type="checkbox" class="bulkCheckbox" bulkId="<?php echo $record->id; ?>"/></td>
                    <td>
                        <div class="top-icon-bar dropdown">
                            <a href="javascript:void(0);" title="" class="user-ico clearfix" data-toggle="dropdown">
                                <span><?php echo $record->title; ?></span>
                            </a>
                            <!--<ul class="dropdown-menu">
                                <li>
                                    <div class="infobox info-bg mrg0B">
                                        <img src="<?php echo IMAGE_PATH . 'gallery/galleryimages/thumbnails/' . $record->image; ?>"
                                             style="width:100%"/>
                                        <span><?php echo $record->title; ?></span>
                                    </div>
                                </li>
                            </ul>-->
                        </div>
                    </td>
                    <td>
                        <?php
                            $parent = Gallery::find_by_id($record->galleryid);
                            echo set_na($parent->title);
                        ?>
                    </td>

                    <td class="text-center">
                        <?php
                        $statusImage = ($record->status == 1) ? "bg-green" : "bg-red";
                        $statusText = ($record->status == 1) ? $GLOBALS['basic']['clickUnpub'] : $GLOBALS['basic']['clickPub'];
                        ?>
                        <a href="javascript:void(0);"
                           class="btn small <?php echo $statusImage; ?> tooltip-button"
                           onClick="imageListStatusToggler(<?php echo $record->id; ?>)"
                           data-placement="top" title="<?php echo $statusText; ?>"
                           status="<?php echo $record->status; ?>" id="imgHolder_<?php echo $record->id; ?>"
                           moduleId="<?php echo $record->id; ?>">
                            <i class="glyph-icon icon-flag"></i>
                        </a>

                        <a href="javascript:void(0);" class="btn small bg-red tooltip-button" data-placement="top"
                           title="Remove" onclick="imageListDelete(<?php echo $record->id; ?>);">
                            <i class="glyph-icon icon-remove"></i>
                        </a>
                        <input name="sortId" type="hidden" value="<?php echo $record->id; ?>">
                    </td>
                </tr>
            <?php endforeach; ?>
            </tbody>
        </table>
    </div>

    <div class="pad0L col-md-2">
        <select name="dropdown" id="groupTaskField" class="custom-select">
            <option value="0"><?php echo $GLOBALS['basic']['choseAction']; ?></option>
            <option value="listImageDelete"><?php echo $GLOBALS['basic']['delete']; ?></option>
            <option value="listImageToggleStatus"><?php echo $GLOBALS['basic']['toggleStatus']; ?></option>
        </select>
    </div>
    <a class="btn medium primary-bg" href="javascript:void(0);" id="apply_btn">
    <span class="glyph-icon icon-separator float-right">
      <i class="glyph-icon icon-cog"></i>
    </span>
        <span class="button-content"> Click </span>
    </a>
</div>