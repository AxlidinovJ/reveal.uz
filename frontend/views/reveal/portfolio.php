<?php

use common\models\Imgs;
use common\models\Portfolio;
use yii\helpers\Url;
$imgs = Portfolio::find()->orderBy('updated_at DESC')->all()
?>
<section id="portfolio" class="portfolio">
      <div class="container" data-aos="fade-up">
        <div class="section-header">
          <h2>Our Portfolio</h2>
          <!-- <p>Sed tamen tempor magna labore dolore dolor sint tempor duis magna elit veniam aliqua esse amet veniam enim export quid quid veniam aliqua eram noster malis nulla duis fugiat culpa esse aute nulla ipsum velit export irure minim illum fore</p> -->
        </div>

        <div class="row" data-aos="fade-up" data-aos-delay="100">
          <div class="col-lg-12 d-flex justify-content-center">
            <ul id="portfolio-flters">
              <li data-filter="*" class="filter-active">All</li>
              <?php foreach($imgs as $Img):?>
                <li data-filter=".filter-<?=strtolower($Img->title)?>"><?=ucfirst($Img->title)?></li>
              <?php endforeach; ?>
            </ul>
          </div>
        </div>

        <div class="row portfolio-container" data-aos="fade-up" data-aos-delay="200">

        <?php foreach($imgs as $Img):
        if(isset($Img->imgs[0])){
          $rasm  = $Img->imgs[0]->name;
        }else{
          $rasm = 'no-image.png';
        }
          
        ?>
          <div class="col-lg-4 col-md-6 portfolio-item filter-<?=strtolower($Img->title)?>">
            <img src="<?=url::to('/backend/web/images/imgs/'.$rasm)?>" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4><?=ucfirst($Img->title)?></h4>
              <p><?=ucfirst($Img->title)?></p>
              <a href="<?=url::to('/backend/web/images/imgs/'.$rasm)?>" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="<?=ucfirst($Img->title)?>"><i class="bx bx-plus"></i></a>
              <a href="<?=Url::to(['reveal/oneportfolio','id'=>$Img->id])?>" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>
        <?php endforeach; ?>
         
        </div>

      </div>
    </section>