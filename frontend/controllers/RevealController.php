<?php

namespace frontend\controllers;

use common\models\BotApi;
use common\models\Contact;
use common\models\Portfolio;
use common\models\TelegramBot;
use Yii;
use yii\helpers\Url;
use yii\web\Controller;
use yii\web\NotFoundHttpException;

class RevealController extends Controller
{

    public function actionIndex()
    {
        $token = TelegramBot::find()->limit(1)->all();
        $bot = new BotApi($token[0]->token);

        $model = new Contact();
        if($model->load(Yii::$app->request->post()) ){
            $model->status = 0;

        //     if($model->save()){
        //         $link = $_SERVER['SERVER_NAME']."".Url::to(['admin/contact/view','id'=>$model->id]);
        //         $text = "<b>".$model->id." - raqamli murojat</b>\n<b>⚡️Name:</b> ".$model->name."\n<b>☎️Tel:</b> ".$model->phone."\n<b>🎟Title: </b>".$model->title."<b>📝 Text:</b> ".substr($model->content,0,500)." \n\nLink: $link";
        //         Yii::$app->session->setFlash('success',"success");
        //         $bot->sendMessage($token[0]->kanal,$text);
        //         $bot->sendMessage($token[0]->guruh,$text);
        //     }else{
        //         Yii::$app->session->setFlash('success',"error");
        //     }
        //     return $this->redirect(['index']);
        print_r($model);
        }
        return $this->render('index',['model'=>$model]);
    }

    public function actionOneportfolio($id)
    {
        $model = Portfolio::findOne($id);
        if($model!==null){
            return $this->render('oneportfolio',['model'=>$model]);
        }
            throw new NotFoundHttpException();

    }

   

}
