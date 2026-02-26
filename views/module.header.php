<?php
$siteRegulars = Config::find_by_id(1);
$booking_code = Config::getField('hotel_code', true);
$header = ob_start();
$tellinked = '';
$telno = explode(",", $siteRegulars->contact_info);
$lastElement = array_shift($telno);
$tellinked .= '<a href="tel:' . $lastElement . '" target="_blank">' . $lastElement . '</a>|';
foreach ($telno as $tel) {

    $tellinked .= '<a href="tel:+977-' . $tel . '" target="_blank">' . $tel . '</a>';
    if (end($telno) != $tel) {
        $tellinked .= '|';
    }
}
?>
    <!-- header info begin -->
    <div id="header-info">
        <div class="container">
            <div class="row">
                <div class="col-md-9">
                    <ul class="header-contact">
                        <li class="icon_location">
                            <a href="<?= $siteRegulars->contact_info2 ?>"
                               target="_blank"><?= $siteRegulars->fiscal_address ?></a>
                        </li>
                        <li class="icon_phone"><a
                                    href="tel:<?= $siteRegulars->contact_info ?>"><?= $siteRegulars->contact_info ?></a>
                        </li>
                        <li class="icon_email"><a
                                    href="mailto:<?= $siteRegulars->email_address ?>"><?= $siteRegulars->email_address ?></a>
                        </li>
                    </ul>
                </div>

                <div class="col-md-3">
                    <div class="h_box">
                        <div class="social-icons-header">
                            <?= $jVars['module:socilaLinktop'] ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- header info close -->

    <!-- header begin -->
    <header>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <span id="menu-btn"></span>

                    <!-- logo begin -->
                    <div id="logo">
                        <div class="inner">
                            <a href="<?= BASE_URL ?>home"><img
                                        src="<?= IMAGE_PATH ?>preference/<?= $siteRegulars->logo_upload ?>" alt="logo"></a>
                        </div>
                    </div>
                    <!-- logo close -->

                    <!-- mainmenu begin -->
                    <nav>
                        <?= $jVars['module:res-menu'] ?>
                    </nav>
                    <!-- mainmenu close -->
                </div>
            </div>
            <!-- Removed one div cause design broke -->
    </header>
    <!-- header close -->
<?php
$header = ob_get_clean();

$header = $headerscript = '';

$header .= '
    <style>

        .dropdown {
            position: relative;
            width: 250px;
        }
        .dropdown-input {
            width: 100%;
            padding: 8px;
            font-size: 16px;
        }
        .dropdown-list {
            position: absolute;
            top: 100%;
            left: 0;
            z-index: 100;
            background-color: #fff;
            border: 1px solid #ccc;
            width: 100%;
            max-height: 200px;
            overflow-y: auto;
            display: none;
        }
        .dropdown-list-item {
            padding: 8px;
            cursor: pointer;
        }
        .dropdown-list-item:hover {
            background-color: #f0f0f0;
        }
    </style>

';

$header = '

<nav class="navbar navbar-expand-lg bg-transparent top-0 z-3 w-100  nav_bar py-0">
    <div class="container-fluid navbar__height translucent-navbar">
          <div class="collapse navbar-collapse flex-grow-0 navbar_gaping" id="navbarSupportedContent">
      ' . $jVars['module:res-menu'] . '
      </div>
      <a class="navbar-brand navbar__position" href="' . BASE_URL . '"><img src="' . IMAGE_PATH . 'preference/' . $siteRegulars->logo_upload . '" width="120px;" alt=""></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
        <div class="dropdown search_dropdown" id="dropdownContainer">
        <img src="' . BASE_URL . 'template/web/image/icons/search.svg">
            <input type="text" class="dropdown-input" id="searchInput" placeholder="SEARCH" autocomplete="off">
            <div class="dropdown-list" id="dropdownList"></div>
        </div>
    </div>
  </nav>
            ';
$optionlinks = '';
$allrec = Gallery::find_all_active();
foreach ($allrec as $indrec) {
    $destdet = !empty($indrec->destinationId) ? Destination::find_by_id($indrec->destinationId) : '';
    $dest = (!empty($destdet)) ? ', ' . $destdet->title : '';
    $pradesh = (!empty($destdet)) ? '- ' . $destdet->pradesh : '';

    $optionlinks .= "{ text: '" . $indrec->title . "', url: '" . BASE_URL . 'portfolio/' . $indrec->slug . "' },";
}

$headerscript .= "
   
    <script>
        const options = [
            " . $optionlinks . "
        ];
        
        const searchInput = document.getElementById('searchInput');
        const dropdownList = document.getElementById('dropdownList');
        
        searchInput.addEventListener('input', function() {
            const searchTerm = this.value.trim().toLowerCase();
            const filteredOptions = options.filter(option =>
                option.text.toLowerCase().includes(searchTerm)
            ).slice(0, 5); // Limit suggestions to 5 items
            
            renderDropdownList(filteredOptions);
        });
        
        function renderDropdownList(filteredOptions) {
            if (filteredOptions.length > 0) {
                dropdownList.innerHTML = '';
                filteredOptions.forEach(option => {
                    const optionElement = document.createElement('div');
                    const linkElement = document.createElement('a');
                    linkElement.textContent = option.text;
                    linkElement.href = option.url;
                    linkElement.className = 'dropdown-list-item';
                    linkElement.onclick = function() {
                        window.location.href = option.url; // Redirect to the option's URL
                    };
                    optionElement.appendChild(linkElement);
                    dropdownList.appendChild(optionElement);
                });
                dropdownList.style.display = 'block';
            } else {
                dropdownList.style.display = 'none';
            }
        }
        
        // Close dropdown list when clicking outside the dropdown container
        document.addEventListener('click', function(e) {
            const dropdownContainer = document.getElementById('dropdownContainer');
            if (!dropdownContainer.contains(e.target)) {
                dropdownList.style.display = 'none';
            }
        });
    </script>
";

$jVars['module:header'] = $header;
$jVars['module:headerscript'] = $headerscript;