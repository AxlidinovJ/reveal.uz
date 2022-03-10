<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\Testimonial */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="testimonial-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'img')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
