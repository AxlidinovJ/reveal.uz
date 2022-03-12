<?php

use common\models\Tarmoqlar;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Tarmoqlars');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tarmoqlar-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Yii::t('app', 'Create Tarmoqlar'), ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php Pjax::begin(); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            // 'img',
            [
                'attribute'=>'img',
                'format'=>'raw',
                'value'=>function($data){
                    return '<i class="'.$data->img.'"></i>';
                }
            ],
            'url:url',
            [
                'class' => ActionColumn::className(),
                'urlCreator' => function ($action, Tarmoqlar $model, $key, $index, $column) {
                    return Url::toRoute([$action, 'id' => $model->id]);
                 }
            ],
        ],
    ]); ?>

    <?php Pjax::end(); ?>

</div>
