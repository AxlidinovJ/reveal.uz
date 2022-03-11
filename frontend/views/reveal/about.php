<?php

use common\models\About;
use yii\helpers\Url;

$about = About::find()->orderBy('id DESC')->limit(1)->one();
?>
<section id="about">
      <div class="container" data-aos="fade-up">
        <div class="row">
          <div class="col-lg-6 about-img">
            <img src="<?=url::to('/backend/web/images/about/'.$about->img)?>" alt="">
          </div>

          <div class="col-lg-6 content">
            <h2><?=$about->title?></h2>
            <h3><?=$about->subtitle?></h3>

            <ul>

              <?php foreach(explode("\n",$about->items) as $items):?>
              <li><i class="bi bi-check-circle"></i><?=$items?></li>
              <?php endforeach;?>
             
            </ul>

          </div>
        </div>

      </div>
    </section>