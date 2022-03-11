<?php

use common\models\Header;
use yii\helpers\Url;

$header = Header::find()->orderBy('id DESC')->limit(1)->one();
?>

<style>
  #hero {
    background: url(<?=Url::to('/backend/web/images/header/'.$header->img)?>) no-repeat;
}
</style>

<div id="hero">

<div class="hero-content" data-aos="fade-up">
  <h2><?=$header->title?></h2>
  <div>
    <a href="#about" class="btn-get-started scrollto"><?=$header->about_btn?></a>
    <a href="#portfolio" class="btn-projects scrollto"><?=$header->project_btn?></a>
  </div>
</div>

<div class="hero-slider swiper">
  <div class="swiper-wrapper">
    <!-- <div class="swiper-slide" style="background-image: url('assets/img/hero-carousel/1.jpg');"></div>
    <div class="swiper-slide" style="background-image: url('assets/img/hero-carousel/2.jpg');"></div>
    <div class="swiper-slide" style="background-image: url('assets/img/hero-carousel/3.jpg');"></div>
    <div class="swiper-slide" style="background-image: url('assets/img/hero-carousel/4.jpg');"></div> -->
    <div class="swiper-slide" style="background-image: url(<?=Url::to('/backend/web/images/header/'.$header->img)?>);"></div>
  </div>
</div>

</div><!-- End Hero Section -->
