<?php

use common\models\Testimonial;
use yii\helpers\Url;

$testimonials = Testimonial::find()->orderBy('id DESC')->all();
?>


<section id="testimonials">
      <div class="container" data-aos="fade-up">
        <div class="section-header">
          <h2><?=Yii::t('app','Testimonials')?></h2>
          <!-- <p>Sed tamen tempor magna labore dolore dolor sint tempor duis magna elit veniam aliqua esse amet veniam enim export quid quid veniam aliqua eram noster malis nulla duis fugiat culpa esse aute nulla ipsum velit export irure minim illum fore</p> -->
        </div>

        <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper-wrapper">
            <?php foreach($testimonials as $testimonial):?>
            <div class="swiper-slide">
              <div class="testimonial-item">
                <p>
                  <img src="assets/img/quote-sign-left.png" class="quote-sign-left" alt="">
                  <?=$testimonial->text?>
                  <img src="assets/img/quote-sign-right.png" class="quote-sign-right" alt="">
                </p>
                <img src="<?=Url::to('/backend/web/images/testimonial/'.$testimonial->img)?>" class="testimonial-img" alt="">
                <h3><?=$testimonial->name?></h3>
                <h4><?=$testimonial->field?></h4>
              </div>
            </div>
            <?php endforeach;?>

         
          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section>