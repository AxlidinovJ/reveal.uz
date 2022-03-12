<?php

use common\models\Imgs;
use yii\helpers\Url;

$this->title = $model->title;
$this->params['breadcrumbs'][] = $this->title;

$imgs = Imgs::find()->where('products_id='.$model->id)->all();
$count = count($imgs);
?>
 
  <section id="portfolio-details" class="portfolio-details">
      <div class="container">

        <div class="row gy-4">

          <div class="col-lg-8">
            <div class="portfolio-details-slider swiper">
              <div class="swiper-wrapper align-items-center">

              <?php if($count>0){?>
                <?php foreach($imgs as $img){?>
                <div class="swiper-slide">
                  <img src="<?=Url::to('/backend/web/images/imgs/'.$img->name)?>" alt="">
                </div>
                <?php }?>
                <?php }else{?>
                  <div class="swiper-slide">
                  <img src="<?=Url::to('/backend/web/images/imgs/no-image.png')?>" alt="">
                </div>
                <?php }?>
              </div>
              <div class="swiper-pagination"></div>
            </div>
          </div>

          <div class="col-lg-4">
            <div class="portfolio-info">
              <h3><?=Yii::t('app','Project information')?></h3>
              <ul>
                <li><strong><?=Yii::t('app','Category')?></strong>: <?=$model->category->title?></li>
                <li><strong><?=Yii::t('app','Client')?></strong>: <?=$model->clent?></li>
                <li><strong><?=Yii::t('app','Project date')?></strong>: <?=date('d-M Y',$model->date)?></li>
                <li><strong><?=Yii::t('app','Project URL')?></strong>: <a href="<?=$model->url?>" target="_blank"><?=$model->url?></a></li>
              </ul>
            </div>
            <div class="portfolio-description">
              <h2><?=Yii::t('app','This is an example of portfolio detail')?></h2>
              <p>
              <?=$model->content?>
              </p>
            </div>
          </div>

        </div>

      </div>
    </section>