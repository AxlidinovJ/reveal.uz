<?php

use common\models\PortfolioCategory;
use yeesoft\multilingual\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;

$catrgory = PortfolioCategory::find()->all();
$catrgoryG = ArrayHelper::map($catrgory,'id','title');
?>

<div class="portfolio-form">

    <?php $form = ActiveForm::begin(); ?>

    <?=$form->languageSwitcher($model)?>

    <?= $form->field($model, 'title')->textInput() ?>

    <?= $form->field($model, 'content')->textInput() ?>

    <?= $form->field($model, 'clent')->textInput() ?>

    <?= $form->field($model, 'category_id')->dropDownList($catrgoryG,['prompt'=>'Birini tanlang']) ?>

    <?= $form->field($model, 'date')->textInput() ?>

    <?= $form->field($model, 'img[]')->fileInput(['multiple' => true]) ?>

   
    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
