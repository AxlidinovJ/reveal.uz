<?php

use common\models\PortfolioCategory;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Portfolio Categories');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="portfolio-category-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Yii::t('app', 'Create Portfolio Category'), ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php Pjax::begin(); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'title',
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
            [
                'class' => ActionColumn::className(),
                'urlCreator' => function ($action, PortfolioCategory $model, $key, $index, $column) {
                    return Url::toRoute([$action, 'id' => $model->id]);
                 }
            ],
        ],
    ]); ?>

    <?php Pjax::end(); ?>

</div>
