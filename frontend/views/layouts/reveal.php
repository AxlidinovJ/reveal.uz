<?php

use common\models\ContactUs;
use common\models\Tarmoqlar;
use common\widgets\Alert;
use frontend\assets\RevealAsset;
use yii\bootstrap4\Breadcrumbs;
use yii\bootstrap4\Html;
use yii\helpers\Url;
$contact = ContactUs::find()->limit(1)->select('phone, email')->orderBy('id DESC')->one();

RevealAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>" class="h-100">

<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <?php $this->registerCsrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <!-- <link rel="stylesheet" href="<?=url::to('vendor/fortawesome/font-awesome/css/all.min.css')?>"> -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800|Montserrat:300,400,700" rel="stylesheet">
    <?php $this->head() ?>
</head>

<body class="d-flex flex-column h-100">
    <?php $this->beginBody() ?>

    <div>

        <!-- ======= Top Bar ======= -->
        <section id="topbar" class="d-flex align-items-center">
            <div class="container d-flex justify-content-center justify-content-md-between">
                <div class="contact-info d-flex align-items-center">
                    <i class="bi bi-envelope d-flex align-items-center"><a
                            href="mailto:<?=$contact->email?>"><?=$contact->email?></a></i>
                    <i class="bi bi-phone d-flex align-items-center ms-4"><span><?=$contact->phone?></span></i>
                </div>
                <div class="social-links d-none d-md-flex align-items-center">
                    <?php foreach(Tarmoqlar::find()->orderBy('id DESC')->limit(5)->all() as $tarmoq):?>
                    <a href="<?=$tarmoq->url?>" class="twitter"><i class="<?=$tarmoq->img?>"></i></a>
                    <?php endforeach;?>
                </div>
            </div>
        </section><!-- End Top Bar-->

        <!-- ======= Header ======= -->
        <header id="header" class="d-flex align-items-center">
            <div class="container d-flex justify-content-between">

                <div id="logo">
                    <h1><a href="<?=Url::home()?>">Reve<span>al</span></a></h1>
                    <!-- Uncomment below if you prefer to use an image logo -->
                    <!-- <a href="<?=Url::home()?>html"><img src="assets/img/logo.png" alt=""></a> -->
                </div>

                <nav id="navbar" class="navbar">
                    <ul>
                        <li><a class="nav-link scrollto <?=(Yii::$app->controller->getRoute()!='reveal/oneportfolio')?'active':''?>" href="<?=url::home()?>#hero"><?=Yii::t('app','Home')?></a></li>
                        <li><a class="nav-link scrollto" href="<?=url::home()?>#about"><?=Yii::t('app','About')?></a></li>
                        <li><a class="nav-link scrollto" href="<?=url::home()?>#services"><?=Yii::t('app','Services')?></a></li>
                        <li><a class="nav-link scrollto <?=(Yii::$app->controller->getRoute()=='reveal/oneportfolio')?'active':''?>" href="<?=url::home()?>#portfolio"><?=Yii::t('app','Portfolio')?></a></li>
                        <li><a class="nav-link scrollto" href="<?=url::home()?>#team"><?=Yii::t('app','Team')?></a></li>
                        <li><a class="nav-link scrollto" href="<?=url::home()?>#contact"><?=Yii::t('app','Contact')?></a></li>
                       <li class="dropdown"><a href="#"><span><?=Yii::t('app','Language')?></span> <i class="bi bi-chevron-down"></i></a>
                       <?php
                            
                            use yeesoft\multilingual\widgets\LanguageSwitcher;
                        
                            echo LanguageSwitcher::widget([
                                'view' => '@vendor/yeesoft/yii2-multilingual/src/views/switcher/jk',
                                'languages' => [
                                    'en-US' => 'English',
                                    'ru' => 'Ruscha',
                                    'uz' => 'Uzbek',
                                ],
                                'languageRedirects' => [
                                    'en-US' => 'en',
                                ]
                            ]);
                                                    ?>
                    </li>
                    </ul>
                    <i class="bi bi-list mobile-nav-toggle"></i>
                </nav><!-- .navbar -->

            </div>
        </header><!-- End Header -->

    </div>

    <?php if(isset($this->params['breadcrumbs'])){?>
    <main id="main">
        <!-- ======= Breadcrumbs Section ======= -->
        <section class="breadcrumbs">
            <div class="container">

                <div class="d-flex justify-content-between align-items-center">
                    <h2><?=html::encode($this->title)?></h2>
                    <?= Breadcrumbs::widget([
                    'homeLink' => [
                        'label' => 'Bosh sahifa',
                        'url' => '/',
                    ],
                    'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
                ]) ?>
                <?= Alert::widget() ?>
                </div>
            </div>
        </section>
        <?=$content?>
    </main>
    <?php }else{?>

        <?=$content?>

    <?php }?>

    <footer id="footer">
        <div class="container">
            <div class="copyright">
                &copy; Copyright <strong>Reveal</strong>. All Rights Reserved
            </div>
            <div class="credits">
                <!--
        All the links in the footer should remain intact.
        You can delete the links only if you purchased the pro version.
        Licensing information: https://bootstrapmade.com/license/
        Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Reveal
      -->
                Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
            </div>
        </div>
    </footer><!-- End Footer -->

    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
            class="bi bi-arrow-up-short"></i></a>


    <?php $this->endBody() ?>
</body>

</html>
<?php $this->endPage();