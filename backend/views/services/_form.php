<?php

use yeesoft\multilingual\widgets\ActiveForm;
use yii\helpers\Html;

?>

<div class="services-form">

    <?php $form = ActiveForm::begin(); ?>

    <?=$form->languageSwitcher($model)?>

    <?= $form->field($model, 'img')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'title')->textInput() ?>

    <?= $form->field($model, 'content')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
