<?php

use common\models\Imgs;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\Portfolio */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Portfolios'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="portfolio-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Yii::t('app', 'Update'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a(Yii::t('app', 'Delete'), ['delete', 'id' => $model->id], [
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
            'content',
            // 'category_id',
            [
                'attribute'=>'category_id',
                'value'=>function($data){
                    return $data->category->title;
                }
            ],
            // 'date',
            [
                'attribute'=>'date',
                'format'=>'html',
                'value'=>function($data){
                    return date('d-M Y',$data->date); 
                }
            ],
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

    <h3>Rasmlari</h3>
   <?php
   $rasmlar = Imgs::find()->where(['products_id'=>$model->id])->all();
   if(count($rasmlar)>0){
    foreach($rasmlar as $rasm){
        echo html::a(
            html::img('/backend/web/images/imgs/'.$rasm->name,
            ['height'=>'150px']
         ),
         Url::to([
             '/portfolio/deleteimg',
             'id'=>$rasm->id,
             ]),[
                 'data'=>[
                     'confirm'=>"Rasmni o'chirmoqchimisz",
                 ],
             ]);
    }
   }else{
       echo "<h4>mavhud emas</h4>";
   }

   ?>

</div>
