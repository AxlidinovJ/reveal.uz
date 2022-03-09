<?php

use yii\helpers\Html;
use yeesoft\multilingual\widgets\ActiveForm;

?>

<div class="header-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->languageSwitcher($model); ?>

    <?= $form->field($model, 'title')->textInput() ?>

    <?= $form->field($model, 'img')->fileInput() ?>

    <?= $form->field($model, 'about_btn')->textInput() ?>

    <?= $form->field($model, 'project_btn')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
