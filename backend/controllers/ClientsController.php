<?php

namespace backend\controllers;

use common\models\Clients;
use Yii;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;

/**
 * ClientsController implements the CRUD actions for Clients model.
 */
class ClientsController extends DefaultController
{
 
    public function actionIndex()
    {
        $dataProvider = new ActiveDataProvider([
            'query' => Clients::find(),
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
     * Displays a single Clients model.
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
     * Creates a new Clients model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return string|\yii\web\Response
     */
    public function actionCreate()
    {
        $model = new Clients();
        $model->scenario = Clients::CREATE;

        if ($this->request->isPost) {
            if ($model->load($this->request->post())) {
                $img = UploadedFile::getInstance($model,'img');
                if($img){
                    $nomi  = Yii::$app->getSecurity()->generateRandomString(20).".".$img->extension;
                    $img->saveAs('images/clents/'.$nomi);
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
     * Updates an existing Clients model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param int $id ID
     * @return string|\yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $model->scenario = Clients::UPDATE;

        $nomi = $model->img;

        if ($this->request->isPost && $model->load($this->request->post())) {
            $img = UploadedFile::getInstance($model,'img');
            if($img){
                if(file_exists('images/clents/'.$nomi)){
                    unlink('images/clents/'.$nomi);
                }
                $nomi  = Yii::$app->getSecurity()->generateRandomString(20).".".$img->extension;
                $img->saveAs('images/clents/'.$nomi);
            }
            $model->img = $nomi;
            $model->save();
            return $this->redirect(['view', 'id' => $model->id]);
        }


        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Clients model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param int $id ID
     * @return \yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Clients model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param int $id ID
     * @return Clients the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Clients::findOne(['id' => $id])) !== null) {
            return $model;
        }

        throw new NotFoundHttpException(Yii::t('app', 'The requested page does not exist.'));
    }
}
