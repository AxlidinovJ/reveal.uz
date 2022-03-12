<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\Contact */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Contacts'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="contact-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
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
            'name',
            'phone',
            'title',
            'content:ntext',
            [
                'attribute'=>'created_at',
                'value'=>function($data){
                    return date('d-M Y H:i',$data->created_at);
                }
            ],
            [
                'attribute'=>'updated_at',
                'value'=>function($data){
                    return date('d-M Y H:i',$data->updated_at);
                }
            ],

        ],
    ]) ?>

</div>
