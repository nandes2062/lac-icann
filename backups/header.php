
        <style>
        .rex-redaxo-logo {
            height: 10px;
            vertical-align: middle;
        }
        #rex-page-login .rex-nav-top {
            background: #4a99d9;
        }
        #rex-page-login .rex-redaxo-logo path.rex-redaxo-logo-r, #rex-page-login .rex-redaxo-logo path.rex-redaxo-logo-e, #rex-page-login .rex-redaxo-logo path.rex-redaxo-logo-d, #rex-page-login .rex-redaxo-logo path.rex-redaxo-logo-cms {
            fill: #283542;
        }
        @media (max-width: 991px) {
            .rex-nav-top .container-fluid .navbar-brand {
                height: 60px;
                line-height: 20px;
            }
        }
        .be-style-customizer-title {
            left: 310px;
        }
        </style>
        <nav class="rex-nav-top navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="<?= rex_url::backendController() ?>"><span class="navbar-brand"><img class="rex-js-svg rex-redaxo-logo" style="height: 53px;" src="<?= rex_url::base('assets/images/lac-logo.png') ?>" /></span></a>
                    <?php if (rex_be_controller::getCurrentPageObject()->isPopup()): ?>
                        <span class="navbar-brand"><img class="rex-js-svg rex-redaxo-logo" src="<?= rex_url::coreAssets('redaxo-logo.svg') ?>" /></span>
                    <?php else: ?>
                        <a class="navbar-brand" href="<?= rex_url::backendController() ?>"><img class="rex-js-svg rex-redaxo-logo" src="<?= rex_url::coreAssets('redaxo-logo.svg') ?>" /></a>
                    <?php endif; ?>
                    <?php if (!rex_be_controller::getCurrentPageObject()->isPopup() && rex::getUser() && rex::getUser()->isAdmin() && rex::isDebugMode()): ?>
                        <a class="rex-marker-debugmode" href="<?= rex_url::backendPage('system/settings') ?>" title="<?= rex_i18n::msg('debug_mode_marker') ?>">
                            <i class="rex-icon rex-icon-heartbeat"></i>
                        </a>
                    <?php endif; ?>
                </div>
                <?= $this->meta_navigation ?>
            </div>
        </nav>
