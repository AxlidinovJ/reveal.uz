<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\Header */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Headers'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="header-view">

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
            'title',
            [
                'attribute'=>'img',
                'format'=>'html',
                'value'=>function($data){
                    return html::img('/backend/web/images/header/'.$data->img,['width'=>'400px']);
                }
            ],

           'about_btn',
           'project_btn',
            [
                'attribute'=>'created_at',
                'format'=>'html',
                'value'=>function($data){
                    return date('d-M Y',$data->created_at); 
                }
            ],

            [
                'attribute'=>'updated_at',
                'format'=>'html',
                'value'=>function($data){
                    return date('d-M Y',$data->updated_at); 
                }
            ],
        ],
    ]) ?>

</div>
