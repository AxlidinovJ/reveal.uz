<?php

use common\models\Contact;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Contacts');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="contact-index">

    <h1><?= Html::encode($this->title) ?></h1>


    <?php Pjax::begin(); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'rowOptions'=>function($data){
            if($data->status){
                // return ['class'=>'primary'];
            }else{
                return ['class'=>'success'];
            }
        },
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            // 'id',
            'name',
            'phone',
            'title',
            // 'content:ntext',
            [
                'class' => ActionColumn::className(),
                'template'=>'{view}<br>{delete}',
                'urlCreator' => function ($action, Contact $model, $key, $index, $column) {
                    return Url::toRoute([$action, 'id' => $model->id]);
                 }
            ],
        ],
    ]); ?>

    <?php Pjax::end(); ?>

</div>
