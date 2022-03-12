<?php

use backend\assets\AdminAsset;
use common\models\Contact;

use common\widgets\Alert;
use yii\bootstrap4\Html;
use yii\helpers\Url;
use yii\widgets\Breadcrumbs;
use yii\widgets\Menu;
$xabarlarSoni = Contact::find()->where('status=0')->count();


// use yii\widgets\Menu;
AdminAsset::register($this);
$admin  =  yii::$app->user->identity;
$session = Yii::$app->session;
$addClass = $session->get('sidebar') ;//?? 'sidebar-collapse';
?>

<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?=Yii::$app->language?>">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?=$this->title?></title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
   <?=$this->head()?>
</head>

<body class="hold-transition skin-blue sidebar-mini <?=$addClass?>">
<?php $this->beginBody() ?>



    <div class="wrapper">
        <header class="main-header">

            <a href="<?=Url::home()?>" class="logo">
                <span class="logo-mini"><b>iT</b></span>
                <span class="logo-lg"><b>iTeach</b>.uz</span>
            </a>
            <nav class="navbar navbar-static-top">
                <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                    <span class="sr-only">Toggle navigation</span>
                </a>

                <div class="navbar-custom-menu">
                    <ul class="nav navbar-nav">


                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <img src="<?=url::to('@web/images/users/no-img.png')?>" class="user-image" alt="User Image">
                                <span class="hidden-xs"><?=$admin->name??$admin->username??'salom'?></span>
                            </a>
                            <ul class="dropdown-menu">

                                <li class="user-header">
                                    <img src="<?=url::to('@web/images/users/no-img.png')?>" class="img-circle" alt="User Image">
                                    <p>
                                    <?=$admin->name??$admin->username??"salom"?>
                                        <small><?=date('d-M Y',$admin->created_at??time())?></small>
                                    </p>
                                </li>

                                <!-- <li class="user-body">
                                    <div class="row">
                                        <div class="col-xs-4 text-center">
                                            <a href="#">Followers</a>
                                        </div>
                                        <div class="col-xs-4 text-center">
                                            <a href="#">Sales</a>
                                        </div>
                                        <div class="col-xs-4 text-center">
                                            <a href="#">Friends</a>
                                        </div>
                                    </div>

                                </li> -->
                                <li class="user-footer">
                                    <div class="pull-left">
                                    <?=Html::a("Profile",url::to(['/dashboard/profil']),['class'=>'btn btn-default btn-flat'])?>
                                    </div>
                                    <div class="pull-right">
                                        <a href="<?=url::to(['/dashboard/logout'])?>" class="btn btn-default btn-flat">Sign out</a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>

        <aside class="main-sidebar">
            <section class="sidebar">

                <div class="user-panel">
                    <div class="pull-left image">
                        <img src="<?=url::to('@web/images/users/no-img.png')?>" class="img-circle" alt="User Image">
                    </div>
                    <div class="pull-left info">
                        <p><?=Html::a($admin->name??$admin->username??"User",url::to(['/dashboard/profil']))?></p>
                        <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                    </div>
                </div>

                <form action="#" method="get" class="sidebar-form">
                    <div class="input-group">
                        <input type="text" name="search" class="form-control" placeholder="Qidirish...">
                        <span class="input-group-btn">
                            <button type="submit" name="btn" id="search-btn" class="btn btn-flat">
                                <i class="fa fa-search"></i>
                            </button>
                        </span>
                    </div>
                </form>


                 <?php
                 echo  Menu::widget([
                    'options'=>[
                        'class'=>'sidebar-menu',
                        'data-widget'=>"tree",
                    ],
                    'encodeLabels' => false,
                    'items'=>[
                        [
                            'label' => 'Asosiy menyu',
                            'options' =>[
                                    'class' => 'header',
                            ]
                        ],
                        [
                            'label'=>'<i class="fa fa-home"></i><span>Bosh sahifa</span>',
                            'url'=>url::to(['/dashboard/index']),
                            'active' => in_array(Yii::$app->controller->getRoute(), [
                                'dashboard/index',
                                'dashboard/view',
                                'dashboard/update',
                                'dashboard/create',
                            ]),
                        ],
                        [
                            'label'=>'<i class="fa fa-header"></i><span>Header</span>',
                            'url'=>url::to(['/header/index']),
                            'active' => in_array(Yii::$app->controller->getRoute(), [
                                'header/index',
                                'header/view',
                                'header/update',
                                'header/create',
                            ]),
                        ],
                        [
                            'label'=>'<i class="fa fa-question-circle"></i><span>About</span>',
                            'url'=>url::to(['/about/index']),
                            'active' => in_array(Yii::$app->controller->getRoute(), [
                                'about/index',
                                'about/view',
                                'about/update',
                                'about/create',
                            ]),
                        ],
                        [
                            'label'=>'<i class="fa fa-window-restore"></i><span>Servislar</span>',
                            'url'=>url::to(['/services/index']),
                            'active' => in_array(Yii::$app->controller->getRoute(), [
                                'services/index',
                                'services/view',
                                'services/update',
                                'services/create',
                            ]),
                        ],
                        [
                            'label'=>'<i class="fa fa-star-half-o"></i><span>Klentlar</span>',
                            'url'=>url::to(['/clients/index']),
                            'active' => in_array(Yii::$app->controller->getRoute(), [
                                'clients/index',
                                'clients/view',
                                'clients/update',
                                'clients/create',
                            ]),
                        ],
                       
                        [
                            'label'=>'<i class="fa fa-life-ring"></i><span>Portfolio Kategory</span>',
                            'url'=>url::to(['/portfoliocategory/index']),
                            'active' => in_array(Yii::$app->controller->getRoute(), [
                                'portfoliocategory/index',
                                'portfoliocategory/view',
                                'portfoliocategory/update',
                                'portfoliocategory/create',
                            ]),
                        ],
                        [
                            'label'=>'<i class="fa fa-life-ring"></i><span>Portfolio</span>',
                            'url'=>url::to(['/portfolio/index']),
                            'active' => in_array(Yii::$app->controller->getRoute(), [
                                'portfolio/index',
                                'portfolio/view',
                                'portfolio/update',
                                'portfolio/create',
                            ]),
                        ],
                        
                        [
                            'label'=>'<i class="fa fa-user-circle-o"></i><span>Testimonial</span>',
                            'url'=>url::to(['/testimonial/index']),
                            'active' => in_array(Yii::$app->controller->getRoute(), [
                                'testimonial/index',
                                'testimonial/view',
                                'testimonial/update',
                                'testimonial/create',
                            ]),
                        ],
                        [
                            'label'=>'<i class="fa-solid fa-sitemap"></i> <span>Team</span>',
                            'url'=>url::to(['/team/index']),
                            'active' => in_array(Yii::$app->controller->getRoute(), [
                                'team/index',
                                'team/view',
                                'team/update',
                                'team/create',
                            ]),
                        ],
                        [
                            'label'=>'<i class="fa-solid fa-address-card"></i> <span>Kontakt us</span>',
                            'url'=>url::to(['/contactus/index']),
                            'active' => in_array(Yii::$app->controller->getRoute(), [
                                'contactus/index',
                                'contactus/view',
                                'contactus/update',
                                'contactus/create',
                            ]),
                        ],
                        [
                            'label'=>'<i class="fa-solid fa-address-book"></i> <span>Kontakt</span><span class="pull-right-container">
                            <span class="label label-primary pull-right">'.$xabarlarSoni.'</span>
                            </span>',
                            'url'=>url::to(['/contact/index']),
                            'active' => in_array(Yii::$app->controller->getRoute(), [
                                'contact/index',
                                'contact/view',
                                'contact/update',
                                'contact/create',
                            ]),
                        ],
                        [
                            'label'=>'<i class="fa-brands fa-facebook-messenger"></i> <span>Tarmoqlar</span>',
                            'url'=>url::to(['/tarmoqlar/index']),
                            'active' => in_array(Yii::$app->controller->getRoute(), [
                                'tarmoqlar/index',
                                'tarmoqlar/view',
                                'tarmoqlar/update',
                                'tarmoqlar/create',
                            ]),
                        ],
                        [
                            'label'=>'<i class="fa-solid fa-robot"></i> <span>Bot sozlamalri</span>',
                            'url'=>url::to(['/bot/index']),
                            'active' => in_array(Yii::$app->controller->getRoute(), [
                                'bot/index',
                                'bot/view',
                                'bot/update',
                                'bot/create',
                            ]),
                        ],
                        [
                            'label'=>'<i class="fa fa-book" aria-hidden="true"></i><span>Tarjimalar</span>',
                            'url'=>url::to(['/translate-manager/default']),
                        'active' => in_array(Yii::$app->controller->getRoute(), [
                            'translate-manager/index',
                            'translate-manager/view',
                            'translate-manager/update',
                            'translate-manager/create',
                        ]),
                        ],
                        

                    ],
                 ]);
                 
                ?>

            </section>

        </aside>

        <div class="content-wrapper">

            <section class="content-header">
                <h1>
                    <?php //echo Yii::$app->controller->getRoute()?>
                    <?=$this->title?>
                </h1>
            <?= Alert::widget(['options' => ['class'=>'callout', 'style'=>'margin-top: 10px; margin-bottom: 0px;']]) ?>

                <?= Breadcrumbs::widget([
                'links' => $this->params['breadcrumbs'] ?? [],
                'homeLink' => [
                    'label'=>"<i class='fa fa-home'></i> Bosh sahifa", 
                    'url'=>Url::home(), 
                    'encode' => false,
                    ],
                ]) ?>
            </section>

            <section class="content container-fluid">
            <!-- <div class="box box-danger box-header"> -->
                    <?php  
                    // use yeesoft\multilingual\widgets\LanguageSwitcher;

                    // echo LanguageSwitcher::widget([
                    //     'languages' => [
                    //         'en-US' => 'English',
                    //         'uz' => 'Uzbek',
                    //         'ru' => 'Rus',
                    //     ],
                    //     'languageRedirects' => [
                    //         // 'en-US' => 'en',
                    //     ]
                    // ]);
                 ?>
            <!-- </div> -->

                <?php if(mb_stripos(Yii::$app->controller->getRoute(),'dashboard')=='true' or mb_stripos(Yii::$app->controller->getRoute(),'translate-manager')=='true'){ }else{?>
                    <div class="box box-success box-header">
                    <?php } ?>
                            <?=$content?>
                <?php if(mb_stripos(Yii::$app->controller->getRoute(),'dashboard')=='true' or mb_stripos(Yii::$app->controller->getRoute(),'translate-manager')=='true'){ }else{?>
                </div>
                <?php } ?>
            </section>

        </div>

        <footer class="main-footer">
            <div class="pull-right hidden-xs">
                <b>Version</b> 2.4.13
            </div>
            <strong>Copyright &copy; 2014-2019 <a href="https://iTeach.uz/">iTeach.uz</a>.</strong>
        </footer>

        <aside class="control-sidebar control-sidebar-dark">

        
            <div class="tab-content">

                <div class="tab-pane" id="control-sidebar-home-tab">

                </div>

              

            </div>
        </aside>


        <div class="control-sidebar-bg"></div>
    </div>



    <?php $this->endBody() ?>
</body>

</html>
<?php $this->endPage();?>
