<?php

namespace backend\controllers;

use common\models\About;
use Yii;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;

/**
 * AboutController implements the CRUD actions for About model.
 */
class AboutController extends DefaultController
{
   
    public function actionIndex()
    {
        $dataProvider = new ActiveDataProvider([
            'query' => About::find(),
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

    /**
     * Displays a single About model.
     * @param int $id ID
     * @return string
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new About model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return string|\yii\web\Response
     */
    public function actionCreate()
    {
        $model = new About();

        if ($this->request->isPost) {
            if ($model->load($this->request->post())) {
                $img = UploadedFile::getInstance($model,'img');
                if($img){
                    $nomi  = Yii::$app->getSecurity()->generateRandomString(20).".".$img->extension;
                    $img->saveAs('images/about/'.$nomi);
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

    /**
     * Updates an existing About model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param int $id ID
     * @return string|\yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $nomi = $model->img;

        if ($this->request->isPost && $model->load($this->request->post())) {
            $img = UploadedFile::getInstance($model,'img');
            if($img){
                if(file_exists('images/about/'.$nomi)){
                    unlink('images/about/'.$nomi);
                }
                $nomi  = Yii::$app->getSecurity()->generateRandomString(20).".".$img->extension;
                $img->saveAs('images/about/'.$nomi);
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
        if(file_exists('images/about/'.$model->img)){
            unlink('images/about/'.$model->img);
        }
        $model->delete();
        return $this->redirect(['index']);
    }
    protected function findModel($id)
    {
        if (($model = About::find()->multilingual()->where(['id' => $id])->one()) !== null) {
            return $model;
        }

        throw new NotFoundHttpException(Yii::t('app', 'The requested page does not exist.'));
    }
}
