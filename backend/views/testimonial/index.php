<?php

use common\models\Testimonial;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel backend\models\TestimonialSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Testimonials');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="testimonial-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Yii::t('app', 'Create Testimonial <i class="fa-solid fa-plus"></i>'), ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php Pjax::begin(); ?>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            //  'img',
            [
                'attribute'=>'img',
                'format'=>'html',
                'value'=>function($data){
                    return html::img("/backend/web/images/testimonial/".$data->img,['width'=>'100px']);
                }
            ],
             'field',
             'name',
            [
                'class' => ActionColumn::className(),
                'urlCreator' => function ($action, Testimonial $model, $key, $index, $column) {
                    return Url::toRoute([$action, 'id' => $model->id]);
                 }
            ],
        ],
    ]); ?>

    <?php Pjax::end(); ?>

</div>
