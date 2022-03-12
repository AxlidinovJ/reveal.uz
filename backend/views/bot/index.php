<?php

use common\models\BotApi;
use common\models\TelegramBot;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Telegram Bots');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="telegram-bot-index">

    <h1><?= Html::encode($this->title) ?></h1>


    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'token',
            'kanal',
            'guruh',
            [
                'class' => ActionColumn::className(),
                'template'=>'{update}',
                'urlCreator' => function ($action, TelegramBot $model, $key, $index, $column) {
                    return Url::toRoute([$action, 'id' => $model->id]);
                 }
            ],
        ],
    ]); ?>


</div>

<?php

$token  =  TelegramBot::find()->limit(1)->all();
if(isset($token[0])){
$token2 = $token[0]->token;
 $bot = new BotApi($token2); 
$getMe = json_decode($bot->getMe())->result;
$username = $getMe->username;
$name = $getMe->first_name;
$id = $getMe->id;

?>


<table class="table table-bordered table-striped">
    <tr>
        <th>Name</th>
        <td><?=$name?></td>
    </tr>
    <tr>
        <th>Username</th>
        <td><?=html::a($username,url::to("http://t.me/$username"))?></td>
    </tr>
    <tr>
        <th>Id</th>
        <td><?=$id?></td>
    </tr>
       
</table>

<?php }?>
