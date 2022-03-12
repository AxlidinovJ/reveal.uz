<?php

use common\models\Services;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;
use yii\widgets\Pjax;

use kartik\export\ExportMenu;

$this->title = Yii::t('app', 'Services');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="services-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Yii::t('app', 'Create Services <i class="fa-solid fa-plus"></i>'), ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php Pjax::begin(); ?>




    <?php echo GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            [
                'class' => 'yii\grid\SerialColumn',
            ],
            'id',
            // 'img',
            [
                'attribute'=>'img',
                'format'=>'raw',
                'value'=>function($data){
                    return "<i class='".$data->img."'></i>";
                }
            ],
            'title',
            'content',
            [
                'class' => ActionColumn::className(),
                'urlCreator' => function ($action, Services $model, $key, $index, $column) {
                    return Url::toRoute([$action, 'id' => $model->id]);
                 }
            ],
        ],
    ]); ?>


    <?php Pjax::end(); ?>

</div>
