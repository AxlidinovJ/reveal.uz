<?php

namespace backend\controllers;

use common\models\Testimonial;
use backend\models\TestimonialSearch;
use Yii;
use yii\helpers\Url;
use yii\web\NotFoundHttpException;
use yii\imagine\Image;

use yii\web\UploadedFile;

class TestimonialController extends DefaultController
{
    public function actionIndex()
    {
        $searchModel = new TestimonialSearch();
        $dataProvider = $searchModel->search($this->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
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
        $model = new Testimonial();

        if ($this->request->isPost) {
            if ($model->load($this->request->post())) {
                $img = UploadedFile::getInstance($model,'img');
                if($img){
                    $nomi  = Yii::$app->getSecurity()->generateRandomString(20).".".$img->extension;
                    $img->saveAs('images/testimonial/'.$nomi);
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
     * Updates an existing Testimonial model.
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
                        $img->saveAs('images/testimonial/'.$nomi);
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

    /**
     * Deletes an existing Testimonial model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param int $id ID
     * @return \yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $model = $this->findModel($id);
        if(file_exists('images/testimonial/'.$model->img)){
            unlink('images/testimonial/'.$model->img);
        }
        $model->delete();
        return $this->redirect(['index']);
    }


    protected function findModel($id)
    {
        if (($model = Testimonial::find()->multilingual()->where(['id' => $id])->one()) !== null) {
            return $model;
        }

        throw new NotFoundHttpException(Yii::t('app', 'The requested page does not exist.'));
    }
}
