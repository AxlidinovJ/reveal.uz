<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Tarmoqlar */

$this->title = Yii::t('app', 'Create Tarmoqlar');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Tarmoqlars'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tarmoqlar-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
