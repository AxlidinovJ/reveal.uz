<?php

namespace backend\controllers;

use common\models\Team;
use backend\models\TeamSearch;
use Yii;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;

/**
 * TeamController implements the CRUD actions for Team model.
 */
class TeamController extends DefaultController
{
   
    public function actionIndex()
    {
        $searchModel = new TeamSearch();
        $dataProvider = $searchModel->search($this->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Team model.
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
     * Creates a new Team model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return string|\yii\web\Response
     */
    public function actionCreate()
    {
        $model = new Team();

        if ($this->request->isPost) {
            if ($model->load($this->request->post())) {
                $img = UploadedFile::getInstance($model,'img');
                if($img){
                    $nomi  = Yii::$app->getSecurity()->generateRandomString(20).".".$img->extension;
                    $img->saveAs('images/team/'.$nomi);
                    $model->img = $nomi;
                   }else{
                        $model->img = "no-img.jpg";
                   }
                   $model->save();
                }
                return $this->redirect(['view', 'id' => $model->id]);
        } else {
            $model->loadDefaultValues();
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Team model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param int $id ID
     * @return string|\yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $nomi = $model->img ;

        if ($this->request->isPost) {
            if ($model->load($this->request->post())) {
                $img = UploadedFile::getInstance($model,'img');
                    if($img){
                        $nomi  = Yii::$app->getSecurity()->generateRandomString(20).".".$img->extension;
                        $img->saveAs('images/team/'.$nomi);
                        $model->img = $nomi;
                    }
                    $model->save();
                }
                return $this->redirect(['view', 'id' => $model->id]);
            }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

  
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Team model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param int $id ID
     * @return Team the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Team::findOne(['id' => $id])) !== null) {
            return $model;
        }

        throw new NotFoundHttpException(Yii::t('app', 'The requested page does not exist.'));
    }
}
