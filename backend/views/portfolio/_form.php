<?php

use common\models\PortfolioCategory;
use yeesoft\multilingual\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use kartik\date\DatePicker;
$catrgory = PortfolioCategory::find()->all();
$catrgoryG = ArrayHelper::map($catrgory,'id','title');
?>

<div class="portfolio-form">

    <?php $form = ActiveForm::begin(); ?>

    <?=$form->languageSwitcher($model)?>

    <?= $form->field($model, 'title')->textInput() ?>

    <?= $form->field($model, 'content')->textInput() ?>

    <?= $form->field($model, 'clent')->textInput() ?>

    <?= $form->field($model, 'url')->textInput() ?>

    <?= $form->field($model, 'category_id')->dropDownList($catrgoryG,['prompt'=>'Birini tanlang']) ?>
    <?php $model->date = date('m/d/Y',$model->date) ?>
    <?= $form->field($model, 'date')->widget(DatePicker::classname(), [
    'options' => ['placeholder' => 'Enter birth date ...'],
    'pluginOptions' => [
        'autoclose' => true
    ]
]); ?>

    <?= $form->field($model, 'img[]')->fileInput(['multiple' => true]) ?>

   
    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
