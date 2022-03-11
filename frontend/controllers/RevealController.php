<?php

namespace frontend\controllers;

use common\models\Contact;
use common\models\Portfolio;
use Yii;
use yii\web\Controller;
use yii\web\NotFoundHttpException;

class RevealController extends Controller
{

    public function actionIndex()
    {
        $model = new Contact();
        if($model->load(Yii::$app->request->post())){
            $model->save();
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
