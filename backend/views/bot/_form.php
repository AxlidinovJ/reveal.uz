<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\TelegramBot */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="telegram-bot-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'token')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'kanal')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'guruh')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
