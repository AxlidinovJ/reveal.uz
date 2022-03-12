<?php

use yii\helpers\Url;

$this->title = 'Reveal.uz';

?>

  <?=$this->render('hero')?>
  
  <main id="main">

    <?=$this->render('about')?>

    <?=$this->render('services')?>
   
    <?=$this->render('clients')?>

    <?=$this->render('portfolio')?>

    <?=$this->render('testimonials')?>
  
    <?php //$this->render('call-to-action')?>

    <?=$this->render('team')?>

    <?=$this->render('contact',['model'=>$model])?>

  </main>
