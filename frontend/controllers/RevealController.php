<?php

namespace frontend\controllers;

use yii\web\Controller;

class RevealController extends Controller
{

    public function actionIndex()
    {
        return $this->render('index');
    }

    public function actionOneportfolio()
    {
        return $this->render('oneportfolio');
    }

}
