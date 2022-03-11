
<?php

use common\models\ContactUs;
use yii\bootstrap4\ActiveForm;
use yii\bootstrap4\Html;

$contactus = ContactUs::find()->orderBy('id DESC')->limit(1)->one()

?>
    <section id="contact">
      <div class="container" data-aos="fade-up">
        <div class="section-header">
          <h2>Contact Us</h2>
          <!-- <p>Sed tamen tempor magna labore dolore dolor sint tempor duis magna elit veniam aliqua esse amet veniam enim export quid quid veniam aliqua eram noster malis nulla duis fugiat culpa esse aute nulla ipsum velit export irure minim illum fore</p> -->
        </div>

        <div class="row contact-info">

          <div class="col-md-4">
            <div class="contact-address">
              <i class="bi bi-geo-alt"></i>
              <h3>Address</h3>
              <address><?=$contactus->addres?></address>
            </div>
          </div>

          <div class="col-md-4">
            <div class="contact-phone">
              <i class="bi bi-phone"></i>
              <h3>Phone Number</h3>
              <p><a href="tel:<?=$contactus->phone?>"><?=$contactus->phone?></a></p>
            </div>
          </div>

          <div class="col-md-4">
            <div class="contact-email">
              <i class="bi bi-envelope"></i>
              <h3>Email</h3>
              <p><a href="mailto:<?=$contactus->email?>"><?=$contactus->email?></a></p>
            </div>
          </div>

        </div>
      </div>

      <div class="container mb-4">
        <iframe src="<?=$contactus->location?>" width="100%" height="380" frameborder="0" style="border:0" allowfullscreen></iframe>
      </div>

      <div class="container">
        <div class="form">
          <?php
          $form = ActiveForm::begin(['options'=>[
            'class'=>"php-email-form",
          ],    
          ]);
          echo "<div class='row'>";
          echo $form->field($model,'name',['options'=>[
            'class'=>'col-md-6',
          ],'template'=>'{input}'])->textInput(['placeholder'=>Yii::t('app','Name')]);

          echo $form->field($model,'phone',['options'=>[
            'class'=>'col-md-6 mt-3 mt-md-0',
        ],'template'=>'{input}'])->widget(\yii\widgets\MaskedInput::class, [
          'mask' => '+999-99-999-99-99',
      ])->textInput(['placeholder'=>Yii::t('app','Phone'),'value'=>'+998']) ;
          echo "</div>";

          echo $form->field($model,'title',['options'=>[
            'class'=>'mt-3',
        ],'template'=>'{input}'])->textInput(['placeholder'=>Yii::t('app','Title')]);

          echo $form->field($model,'content',['options'=>[
            'class'=>'mt-3',
        ],'template'=>'{input}'])->textarea(['rows'=>'5','placeholder'=>Yii::t('app','Message')]);

          echo '<div class="text-center">';
          echo Html::submitButton('Send Message',['class'=>'mt-3']);
          echo '</div>';
          ActiveForm::end();

          ?>
        </div>

      </div>
    </section>