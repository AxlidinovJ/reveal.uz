<?php

use common\models\Services;
use yii\helpers\Url;

$services = Services::find()->orderBy('id DESC')->all();
?>
<section id="services">
      <div class="container" data-aos="fade-up">
        <div class="section-header">
          <h2>Services</h2>
          <!-- <p>Sed tamen tempor magna labore dolore dolor sint tempor duis magna elit veniam aliqua esse amet veniam enim export quid quid veniam aliqua eram noster malis nulla duis fugiat culpa esse aute nulla ipsum velit export irure minim illum fore</p> -->
        </div>

        <div class="row gy-4">

        <?php $i=0; foreach($services as $servic): $i++?>
          <div class="col-lg-6" data-aos="fade-up" data-aos-delay="<?=$i*100?>">
            <div class="box">
              <div class="icon"><i class="<?=$servic->img?>"></i></div>
              <h4 class="title"><a href="#contact"><?=$servic->title?></a></h4>
              <p class="description"><?=$servic->content?></p>
            </div>
          </div>
        <?php endforeach;?>


        </div>

      </div>
    </section>