<?php

use common\models\Team;
use yii\helpers\Url;

?>

<section id="team">
      <div class="container" data-aos="fade-up">
        <div class="section-header">
          <h2>Our Team</h2>
        </div>
        <div class="row">
          <?php foreach(Team::find()->orderBy('id DESC')->all() as $team):?>
          <div class="col-lg-3 col-md-6">
              <div class="member">
                <div class="pic"><img src="<?=Url::to('/backend/web/images/team/'.$team->img)?>" alt=""></div>
                <div class="details">
                  <h4><?=$team->name?></h4>
                  <span><?=$team->field?></span>
                  <div class="social">
                    <?php if($team->twitter!="#"){?>
                    <a href="<?=$team->twitter?>"><i class="bi bi-twitter"></i></a>
                    <?php  } if($team->ok!="#") {?>
                    <a href="<?=$team->ok?>"><i class="bi bi-facebook"></i></a>
                    <?php }  if($team->telegram!="#") {?>
                    <a href="<?=$team->telegram?>"><i class="bi bi-instagram"></i></a>
                    <?php }  if($team->linkedin!="#") {?>
                    <a href="<?=$team->linkedin?>"><i class="bi bi-linkedin"></i></a>
                    <?php }?>
                  </div>
                </div>
              </div>
          </div>
          <?php endforeach;?>

        </div>
    </section>