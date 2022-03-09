<?php

use yii\helpers\Html;
use yeesoft\multilingual\widgets\ActiveForm;

?>

<div class="about-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->languageSwitcher($model); ?>


    <?= $form->field($model, 'title')->textInput() ?>

    <?= $form->field($model, 'subtitle')->textInput() ?>

    <?= $form->field($model, 'items')->textarea() ?>

    <?= $form->field($model, 'img')->fileInput() ?>


    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
