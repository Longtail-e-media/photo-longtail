<script language="javascript">

    function getLocation() {
        return '<?php echo BASE_URL;?>includes/controllers/ajax.gallery.php';
    }

    function getTableId() {
        return 'table_dnd';
    }

    $(document).ready(function () {
        oTable = $('#example').dataTable({
            "bJQueryUI": true,
            "sPaginationType": "full_numbers"
        }).rowReordering({
            sURL: "<?php echo BASE_URL;?>includes/controllers/ajax.gallery.php?action=sort",
            fnSuccess: function (message) {
                var msg = jQuery.parseJSON(message);
                showMessage(msg.action, msg.message);
            }
        });

        oTable = $('#exampleImages').dataTable({
            "bJQueryUI": true,
            "sPaginationType": "full_numbers"
        }).rowReordering({
            sURL: "<?php echo BASE_URL;?>includes/controllers/ajax.gallery.php?action=sortImages",
            fnSuccess: function (message) {
                var msg = jQuery.parseJSON(message);
                showMessage(msg.action, msg.message);
            }
        });
    });

    /*************************** Shorting Sub Image Gallery Postion *******************************/
    $(document).ready(function () {
        $(function () {
            $(".subImagegallery-sort").sortable({
                //connectWith: ".video-sort",
                start: function (event, ui) {
                    var start_pos = ui.item.index();
                    ui.item.data('start_pos', start_pos);
                },
                update: function (event, ui) {
                    var mySel = "";
                    $('div.oldsort').each(function (i) {
                        mySel = mySel + ';' + $(this).attr('csort');
                    });
                    //var start_pos = ui.item.data('start_pos');
                    var id = ui.item.context.id;
                    var end_pos = ui.item.index();
                    $.ajax({
                        type: "POST",
                        dataType: "JSON",
                        url: getLocation(),
                        data: "action=sortSubGalley&id=" + id + "&toPosition=" + end_pos + "&sortIds=" + mySel,
                        success: function (data) {
                            var msg = eval(data);
                            showMessage(msg.action, msg.message);
                        }
                    });
                }
            });
        });
    });

    $(document).ready(function () {
        // form submisstion actions
        jQuery('#gallery_frm').validationEngine({
            autoHidePrompt: true,
            scroll: false,
            onValidationComplete: function (form, status) {
                if (status == true) {
                    $('#btn-submit').attr('disabled', 'true');
                    for (instance in CKEDITOR.instances)
                        CKEDITOR.instances[instance].updateElement();
                    var action = ($('#idValue').val() == 0) ? "action=add&" : "action=edit&";
                    var data = $('#gallery_frm').serialize();
                    queryString = action + data;
                    $.ajax({
                        type: "POST",
                        dataType: "JSON",
                        url: getLocation(),
                        data: queryString,
                        success: function (data) {
                            var msg = eval(data);
                            if (msg.action == 'warning') {
                                showMessage(msg.action, msg.message);
                                setTimeout(function () {
                                    $('.my-msg').html('');
                                }, 3000);
                                $('#btn-submit').removeAttr('disabled');
                                $('.formButtons').show();
                                return false
                            }
                            if (msg.action == 'success') {
                                showMessage(msg.action, msg.message);
                                setTimeout(function () {
                                    window.location.href = "<?php echo ADMIN_URL?>gallery/list";
                                }, 3000);
                            }
                            if (msg.action == 'notice') {
                                showMessage(msg.action, msg.message);
                                setTimeout(function () {
                                    window.location.href = window.location.href;
                                }, 3000);
                            }
                            if (msg.action == 'error') {
                                showMessage(msg.action, msg.message);
                                $('#buttonsP img').remove();
                                $('.formButtons').show();
                                return false;
                            }
                        }
                    });
                    return false;
                }
            }
        })
        /***************************************** View Gallery Lists *******************************************/
        jQuery('#subgallery_frm').validationEngine({
            autoHidePrompt: true,
            scroll: false,
            onValidationComplete: function (form, status) {
                if (status == true) {
                    $('#btn-submit').attr('disabled', 'true');
                    var action = "action=addSubGalleryImage&";
                    var data = $('#subgallery_frm').serialize();
                    queryString = action + data;
                    $.ajax({
                        type: "POST",
                        dataType: "JSON",
                        url: getLocation(),
                        data: queryString,
                        success: function (data) {
                            var msg = eval(data);
                            if (msg.action == 'warning') {
                                showMessage(msg.action, msg.message);
                                $('#btn-submit').removeAttr('disabled');
                                $('.formButtons').show();
                                return false
                            }
                            if (msg.action == 'success') {
                                showMessage(msg.action, msg.message);
                                setTimeout(function () {
                                    window.location.href = window.location.href;
                                }, 3000);
                            }
                            if (msg.action == 'notice') {
                                showMessage(msg.action, msg.message);
                                setTimeout(function () {
                                    window.location.href = window.location.href;
                                }, 3000);
                            }
                            if (msg.action == 'error') {
                                showMessage(msg.action, msg.message);
                                $('#buttonsP img').remove();
                                $('.formButtons').show();
                                return false;
                            }
                        }
                    });
                    return false;
                }
            }
        })

    });

    // Edit records
    function editRecord(Re) {
        $.ajax({
            type: "POST",
            dataType: "JSON",
            url: getLocation(),
            data: 'action=editExistsRecord&id=' + Re,
            success: function (data) {
                var msg = eval(data);
                $("#title").val(msg.title);
                $("#idValue").val(msg.editId);
            }
        });
    }

    // Deleting Record
    function recordDelete(Re) {
        $('.MsgTitle').html('<?php echo sprintf($GLOBALS['basic']['deleteRecord_'], "Gallery")?>');
        $('.pText').html('Click on yes button to delete this gallery permanently.!!');
        $('.divMessageBox').fadeIn();
        $('.MessageBoxContainer').fadeIn(1000);

        $(".botTempo").on("click", function () {
            var popAct = $(this).attr("id");
            if (popAct == 'yes') {
                $.ajax({
                    type: "POST",
                    dataType: "JSON",
                    url: getLocation(),
                    data: 'action=delete&id=' + Re,
                    success: function (data) {
                        var msg = eval(data);
                        showMessage(msg.action, msg.message);
                        $('#' + Re).remove();
                        reStructureList(getTableId());
                    }
                });
            } else {
                Re = null;
            }
            $('.divMessageBox').fadeOut();
            $('.MessageBoxContainer').fadeOut(1000);
        });
    }

    /***************************************** View Gallery Lists *******************************************/
    function viewGallerylist() {
        window.location.href = "<?php echo ADMIN_URL?>gallery/list";
    }

    /***************************************** Add New Gallery *******************************************/
    function AddNewGallery() {
        window.location.href = "<?php echo ADMIN_URL?>gallery/addEdit";
    }

    /***************************************** Edit records *****************************************/
    function editRecord(Re) {
        window.location.href = "<?php echo ADMIN_URL?>gallery/addEdit/" + Re;
    }


    /***************************************** View Articles Lists *******************************************/
    function viewGalleryImageslist(Re) {
        window.location.href = "<?php echo ADMIN_URL?>gallery&mode=galleryImageList/" + Re;
    }

    /***************************************** Add New Articles *******************************************/
    function AddNewGalleryImage(Re) {
        window.location.href = "<?php echo ADMIN_URL?>gallery/addEditGalleryImage/" + Re;
    }

    /***************************************** Edit Gallery Images records *****************************************/
    function editGalleryImageRecord(Re, Reg) {
        window.location.href = "<?php echo ADMIN_URL?>gallery/addEditGalleryImage/" + Re + "&image_id=" + Reg;
    }

    /******************************** Remove temp upload image ********************************/
    function deleteTempimage(Re) {
        $('#previewUserimage' + Re).fadeOut(1000, function () {
            $('#previewUserimage' + Re).remove();
        });
    }

    function viewsubimagelist(Re) {
        window.location.href = "<?php echo ADMIN_URL?>gallery/galleryImageList/" + Re;
    }

    function viewsubimagelistHome(Re) {
        window.location.href = "<?php echo ADMIN_URL?>gallery/galleryImageListHome/" + Re;
    }

    /******************************** Remove User saved Sub Gallery images ********************************/
    function deleteSavedimage(Re) {
        $('.MsgTitle').html('<?php echo sprintf($GLOBALS['basic']['deleteRecord_'], "image")?>');
        $('.pText').html('Click on yes button to delete this image permanently.!!');
        $('.divMessageBox').fadeIn();
        $('.MessageBoxContainer').fadeIn(1000);

        $(".botTempo").on("click", function () {
            var popAct = $(this).attr("id");
            if (popAct == 'yes') {
                $.ajax({
                    type: "POST",
                    dataType: "JSON",
                    url: getLocation(),
                    data: 'action=deleteSubimage&id=' + Re,
                    success: function (data) {
                        var msg = eval(data);
                        if (msg.action == 'success') {
                            $('.removeSavedimg' + Re).fadeOut(1000, function () {
                                $('.removeSavedimg' + Re).remove();
                            });
                        }
                    }
                });
            } else {
                Re = '';
            }
            $('.divMessageBox').fadeOut();
            $('.MessageBoxContainer').fadeOut(1000);
        });
    }

    /******************************** Remove User saved Gallery images ********************************/
    function deleteSavedGalleryimage(Re) {
        $('.MsgTitle').html('<?php echo sprintf($GLOBALS['basic']['deleteRecord_'], "image")?>');
        $('.pText').html('Click on yes button to delete this image permanently.!!');
        $('.divMessageBox').fadeIn();
        $('.MessageBoxContainer').fadeIn(1000);

        $(".botTempo").on("click", function () {
            var popAct = $(this).attr("id");
            if (popAct == 'yes') {
                $('#removeSavedimg' + Re).fadeOut(1000, function () {
                    $('#removeSavedimg' + Re).remove();
                    $('.uploader').fadeIn(500);
                });
            } else {
                Re = '';
            }
            $('.divMessageBox').fadeOut();
            $('.MessageBoxContainer').fadeOut(1000);
        });
    }

    $(function () {
        /*************************************** USer Image Status Toggler ******************************************/
        $('.imageStatusToggle').on('click', function () {
            var Re = $(this).attr('rowId');
            var status = $(this).attr('status');
            newStatus = (status == 1) ? 0 : 1;
            $.ajax({
                type: "POST",
                url: getLocation(),
                data: "action=toggleStatusSubimage&id=" + Re,
                success: function (msg) {
                }
            });
            $(this).attr({'status': newStatus});
            if (status == 1) {
                $('#toggleImg' + Re).removeClass("icon-check-circle-o");
                $('#toggleImg' + Re).addClass("icon-clock-os-circle-o");
            } else {
                $('#toggleImg' + Re).removeClass("icon-clock-os-circle-o");
                $('#toggleImg' + Re).addClass("icon-check-circle-o");
            }
        });

        /*************************************** USer Homepage Status Toggler ******************************************/
        $('.imageHomepageToggle').on('click', function () {
            var Re = $(this).attr('rowId');
            var status = $(this).attr('status');
            newStatus = (status == 1) ? 0 : 1;
            $.ajax({
                type: "POST",
                url: getLocation(),
                data: "action=toggleStatusSubhome&id=" + Re,
                success: function (msg) {
                }
            });
            $(this).attr({'status': newStatus});
            if (status == 1) {
                $('#togglehome' + Re).removeClass("icon-check-circle-o");
                $('#togglehome' + Re).addClass("icon-clock-os-circle-o");
            } else {
                $('#togglehome' + Re).removeClass("icon-clock-os-circle-o");
                $('#togglehome' + Re).addClass("icon-check-circle-o");
            }
        });
    });

    /**************************************** Edit uploaded image title *******************************************/
    function editImageTitle(Re) {
        var clicked = $('.clicked' + Re);
        $(clicked).html("");
        $('<input/>').attr({
            type: 'text',
            id: 'ne-title',
            name: 'ne-title',
            class: 'validate[required,length[0,250]] col-md-9',
            'imgId': Re
        }).appendTo($(clicked)).focus();
        $(clicked).append(' <button type="submit" id="ne-submit" class="col-md-3">Save</button>');

        $('.up-title').on("click", "#ne-submit", function (e) {
            var data = $("#ne-title");
            var id = $(data).attr("imgId");
            var title = $(data).val();
            $.ajax({
                type: "POST",
                dataType: "JSON",
                url: getLocation(),
                data: 'action=editSubGalleryImageText&id=' + id + '&title=' + title,
                success: function (data) {
                    var msg = eval(data);
                    if (msg.action == 'success') {
                        showMessage(msg.action, msg.message);
                        setTimeout(function () {
                            window.location.href = window.location.href;
                        }, 3000);
                    }
                    if (msg.action == 'error') {
                        showMessage(msg.action, msg.message);
                        setTimeout(function () {
                            window.location.href = window.location.href;
                        }, 3000);
                    }
                    if (msg.action == 'notice') {
                        showMessage(msg.action, msg.message);
                        setTimeout(function () {
                            window.location.href = window.location.href;
                        }, 3000);
                    }
                }
            });
        });
    }


    $(document).on('click', '#exampleImages .toggle-status, #exampleImages .toggle-homepage-status', function () {

        var rowRec = $(this);
        var Id = rowRec.data('id');
        var status = parseInt(rowRec.attr('data-status'));
        var newStatus = status === 1 ? 0 : 1;

        var actionType = rowRec.hasClass('toggle-homepage-status')
            ? 'toggleStatusSubhome'
            : 'toggleStatusSubimage';

        $.ajax({
            type: "POST",
            url: getLocation(),
            data: "action=" + actionType + "&id=" + Id,
            success: function () {

                rowRec
                    .attr('data-status', newStatus)
                    .removeClass('bg-green bg-red')
                    .addClass(newStatus === 1 ? 'bg-green' : 'bg-red')
                    .attr("data-original-title",
                        newStatus === 1
                            ? "Click to Unpublish"
                            : "Click to Publish"
                    );
            }
        });
    });

    function imageListDelete(Re) {
        $('.MsgTitle').html('<?php echo sprintf($GLOBALS['basic']['deleteRecord_'], "Image")?>');
        $('.pText').html('Click on yes button to delete this image permanently.!!');
        $('.divMessageBox').fadeIn();
        $('.MessageBoxContainer').fadeIn(1000);

        $(".botTempo").on("click", function () {
            var popAct = $(this).attr("id");
            if (popAct == 'yes') {
                $.ajax({
                    type: "POST",
                    dataType: "JSON",
                    url: getLocation(),
                    data: 'action=deleteSubimage&id=' + Re,
                    success: function (data) {
                        var msg = eval(data);
                        showMessage(msg.action, msg.message);
                        $('#' + Re).remove();
                        reStructureList(getTableId());
                    }
                });
            } else {
                Re = null;
            }
            $('.divMessageBox').fadeOut();
            $('.MessageBoxContainer').fadeOut(1000);
        });
    }

    function listImageDeleteSelectedRecords(idArray) {
        $.ajax({
            type: "POST",
            dataType: "JSON",
            url: getLocation(),
            data: "action=listImageBulkDelete&idArray=" + idArray,
            success: function (data) {
                var msg = eval(data);
                if (msg.action == 'success') {
                    showMessage(msg.action, msg.message);
                    var myMessage = idArray.split("|");
                    var counter = myMessage.length;
                    for (i = 1; i < counter; i++) {
                        $('#' + myMessage[i]).remove();
                        reStructureList(getTableId());
                    }
                }
                if (msg.action == 'error') {
                    showMessage(msg.action, msg.message);
                }
            }
        });
    }

    function checkIfAnyCheckBoxChecked() {
        var countCheckBox = 0;
        $.each($("input.bulkCheckbox:checked"), function () {
            countCheckBox++;
        });
        if (countCheckBox > 0) {
        } else {
            showMessage('warning', 'Please select at least on row!!.');
            return false;
        }
    }

    $(function () {
        $('#apply_btn').on("click", function () {
            var action = $('#groupTaskField').val();
            if (action == '0') {
                showMessage('warning', 'Please select an action!!.');
            }
            var idArray = '0';
            $('.bulkCheckbox').each(function () {
                if ($(this).is(":checked")) {
                    idArray += "|" + $(this).attr('bulkId');
                }
            });
            checkIfAnyCheckBoxChecked();
            if (idArray != '0') {

                switch (action) {
                    case "listImageToggleStatus":
                        $('.record-checkbox').each(function () {
                            if ($(this).is(":checked")) {
                                $('#imgHolder_' + $(this).attr('bulkId')).html('<img src="../images/apanel/loadwheel.gif" />');
                            }
                        });
                        $.ajax({
                            type: "POST",
                            url: getLocation(),
                            data: "action=listImageBulkToggleStatus&idArray=" + idArray,
                            success: function (msg) {
                                var myMessage = idArray.split("|");
                                var counter = myMessage.length;
                                for (i = 1; i < counter; i++) {
                                    var status = $('#imgHolder_' + myMessage[i]).attr('status');
                                    newStatus = (status == 1) ? 0 : 1;
                                    $('#imgHolder_' + myMessage[i]).attr({'status': newStatus});
                                    if (status == 1) {
                                        $('#imgHolder_' + myMessage[i]).removeClass("bg-green");
                                        $('#imgHolder_' + myMessage[i]).addClass("bg-red");
                                        $('#imgHolder_' + myMessage[i]).attr("data-original-title", "Click to Publish");
                                    } else {
                                        $('#imgHolder_' + myMessage[i]).removeClass("bg-red");
                                        $('#imgHolder_' + myMessage[i]).addClass("bg-green");
                                        $('#imgHolder_' + myMessage[i]).attr("data-original-title", "Click to Un-publish");
                                    }
                                }
                                showMessage('success', 'Status has been toggled.');
                            }
                        });
                        break;

                    case "listImageDelete":
                        $('.MsgTitle').html('Do you want to delete the selected rows?');
                        $('.pText').html('Click on yes button to delete this rows permanently.!!');
                        $('.divMessageBox').fadeIn();
                        $('.MessageBoxContainer').fadeIn(1000);

                        $(".botTempo").on("click", function () {
                            var popAct = $(this).attr("id");
                            if (popAct == 'yes') {
                                listImageDeleteSelectedRecords(idArray);
                            }
                            $('.divMessageBox').fadeOut();
                            $('.MessageBoxContainer').fadeOut(1000);
                        });
                        break;
                } // end switch section
                reStructureList(getTableId());
            } // end if section
        });  
    })

</script>