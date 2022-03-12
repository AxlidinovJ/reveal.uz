<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\ContactUs */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Contact uses'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="contact-us-view">

    <h1><?= Html::encode($this->title) ?></h1>

    
    <p>
        <?= Html::a(Yii::t('app', 'Update <i class="fa-solid fa-pen-to-square"></i>'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a(Yii::t('app', 'Delete <i class="fa-solid fa-trash"></i>'), ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => Yii::t('app', 'Are you sure you want to delete this item?'),
                'method' => 'post',
            ],
        ]) ?>
    </p>


    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'addres',
            'phone',
            'email:email',
            // 'location:ntext',
            [
                'attribute'=>'location',
                'format'=>'raw',
                'value'=>function($data){
                    return '<iframe src="'.$data->location.'" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>';
                }
            ],
        ],
    ]) ?>

</div>
