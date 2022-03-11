<?php

use common\models\Clients;
use yii\helpers\Url;
$services = Clients::find()->orderBy('id DESC')->all();
?>

<section id="clients">
      <div class="container" data-aos="fade-up">
        <div class="section-header">
          <h2>Clients</h2>
          <!-- <p>Sed tamen tempor magna labore dolore dolor sint tempor duis magna elit veniam aliqua esse amet veniam enim export quid quid veniam aliqua eram noster malis nulla duis fugiat culpa esse aute nulla ipsum velit export irure minim illum fore</p> -->
        </div>

        <div class="clients-slider swiper" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper-wrapper align-items-center">
          <?php $i=0; foreach($services as $servic): $i++?>
            <div class="swiper-slide"><img src="<?=Url::to('/backend/web/images/clents/'.$servic->img)?>" class="img-fluid" alt="<?=$servic->title?>" title="<?=$servic->title?>"></div>
        <?php endforeach;?>

          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section>