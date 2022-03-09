<?php
$params = array_merge(
    require __DIR__ . '/../../common/config/params.php',
    require __DIR__ . '/../../common/config/params-local.php',
    require __DIR__ . '/params.php',
    require __DIR__ . '/params-local.php'
);

return [
    'defaultRoute'=>'dashboard/index',
    'language'=>'uz',
    'id' => 'app-backend',
    'basePath' => dirname(__DIR__),
    'controllerNamespace' => 'backend\controllers',
    'bootstrap' => ['log'],
    'modules' => [
        'translate-manager' => [
            'class' => 'wokster\translationmanager\TranslationManager',
            'languages' => ['uz','ru','en'],
        ],
    ],
    'container'=>[
        'definitions' => [
            \yii\widgets\LinkPager::class => \yii\bootstrap4\LinkPager::class,
        ],
    ],
    'components' => [
        'request' => [
            'baseUrl'=>'/admin',
            'csrfParam' => '_csrf-backend',
        ],
        'user' => [
            'identityClass' => 'common\models\User',
            'enableAutoLogin' => true,
            'identityCookie' => ['name' => '_identity-backend', 'httpOnly' => true],
        ],
        'session' => [
            // this is the name of the session cookie used for login on the backend
            'name' => 'advanced-backend',
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
      
        'urlManager' => [
            'baseUrl'=>'/admin',
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            // 'suffix'=>'.html',
        ],
        'assetManager' => [
            // override bundles to use CDN :
            'bundles' => [
                // 'yii\web\JqueryAsset' => [
                //     'sourcePath' => null,
                //     'baseUrl' => '',
                //     'js' => [
                //         'js/jquery.js'
                //     ],
                // ],
                'yii\bootstrap4\BootstrapAsset' => [
                    'sourcePath' => null,
                    'baseUrl' => '',
                    'css' => [
                        'bower_components/bootstrap/dist/css/bootstrap.min.css'
                    ],
                ],
            ],
        ],
    ],
    'params' => $params,
];
