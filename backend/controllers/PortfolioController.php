<?php

namespace backend\controllers;

use common\models\Portfolio;
use backend\models\PortfolioSearch;
use common\models\Imgs;
use Yii;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;

/**
 * PortfolioController implements the CRUD actions for Portfolio model.
 */
class PortfolioController extends DefaultController
{
    
    public function actionIndex()
    {
        $searchModel = new PortfolioSearch();
        $dataProvider = $searchModel->search($this->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Portfolio model.
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


    public function actionCreate()
    {
        $model = new Portfolio();

        if ($this->request->isPost) {
            if ($model->load($this->request->post())) {
                $imgs = UploadedFile::getInstances($model,'img');
                $model->img = 'rasm';
                $model->save();
                if($imgs){
                   foreach($imgs as $img){
                        $rasmlar = new Imgs();
                        $nomi  = Yii::$app->getSecurity()->generateRandomString(20).".".$img->extension;
                        $img->saveAs('images/imgs/'.$nomi);
                        $rasmlar->name = $nomi;
                        $rasmlar->products_id = $model->id;
                        $rasmlar->save();
                   }
                }
                return $this->redirect(['view', 'id' => $model->id]);
            }
        } else {
            $model->loadDefaultValues();
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Portfolio model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param int $id ID
     * @return string|\yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($this->request->isPost && $model->load($this->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Portfolio model.
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
     * Finds the Portfolio model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param int $id ID
     * @return Portfolio the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Portfolio::find()->multilingual()->where(['id' => $id])->one()) !== null) {
            return $model;
        }

        throw new NotFoundHttpException(Yii::t('app', 'The requested page does not exist.'));
    }
}
