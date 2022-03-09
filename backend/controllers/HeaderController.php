<?php

namespace backend\controllers;

use common\models\Header;
use Yii;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;


class HeaderController extends DefaultController
{
    
    public function actionIndex()
    {
        $dataProvider = new ActiveDataProvider([
            'query' => Header::find(),
            /*
            'pagination' => [
                'pageSize' => 50
            ],
            'sort' => [
                'defaultOrder' => [
                    'id' => SORT_DESC,
                ]
            ],
            */
        ]);

        return $this->render('index', [
            'dataProvider' => $dataProvider,
        ]);
    }
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }


    public function actionCreate()
    {
        $model = new Header();

        if ($this->request->isPost) {
            if ($model->load($this->request->post())) {
                $img = UploadedFile::getInstance($model,'img');
                if($img){
                    $nomi  = Yii::$app->getSecurity()->generateRandomString(20).".".$img->extension;
                    $img->saveAs('images/header/'.$nomi);
                    $model->img = $nomi;
                }

                if($model->save()){
                    return $this->redirect(['view', 'id' => $model->id]);
                }
            }
        } else {
            $model->loadDefaultValues();
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $nomi = $model->img;

        if ($this->request->isPost && $model->load($this->request->post())) {
            $img = UploadedFile::getInstance($model,'img');
            if($img){
                if(file_exists('images/header/'.$nomi)){
                    unlink('images/header/'.$nomi);
                }
                $nomi  = Yii::$app->getSecurity()->generateRandomString(20).".".$img->extension;
                $img->saveAs('images/header/'.$nomi);
            }
            $model->img = $nomi;
            $model->save();
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    public function actionDelete($id)
    {

       $model =  $this->findModel($id);
        if(file_exists('images/header/'.$model->img)){
            unlink('images/header/'.$model->img);
        }
        $model->delete();
        return $this->redirect(['index']);
    }


    protected function findModel($id)
    {
        if (($model = Header::find()->multilingual()->where(['id' => $id])->one()) !== null) {
            return $model;
        }

        throw new NotFoundHttpException(Yii::t('app', 'The requested page does not exist.'));
    }
}
