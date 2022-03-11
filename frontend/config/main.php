<?php
$params = array_merge(
    require __DIR__ . '/../../common/config/params.php',
    require __DIR__ . '/../../common/config/params-local.php',
    require __DIR__ . '/params.php',
    require __DIR__ . '/params-local.php'
);

return [
    'language'=>'uz',
    'layout'=>'reveal',
    'defaultRoute'=>'reveal/index',
    'id' => 'app-frontend',
    'basePath' => dirname(__DIR__),
    'bootstrap' => ['log'],
    'homeUrl' => '/',
    'controllerNamespace' => 'frontend\controllers',
    'components' => [
        'request' => [
             'baseUrl'=>'/',
            'csrfParam' => '_csrf-frontend',
        ],
        'user' => [
            'identityClass' => 'common\models\User',
            'enableAutoLogin' => true,
            'identityCookie' => ['name' => '_identity-frontend', 'httpOnly' => true],
        ],
        'session' => [
            // this is the name of the session cookie used for login on the frontend
            'name' => 'advanced-frontend',
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
            'baseUrl'=>'/',
            'class' => 'yeesoft\multilingual\web\MultilingualUrlManager',
            'showScriptName' => false,
            'enablePrettyUrl' => true,
            'rules' => [
                '<action:(login|logout)>' => 'site/<action>',
                '<language:([a-zA-Z-]{2,5})?>/<action:[\w \-]+>' => 'site/<action>',
                '<language:([a-zA-Z-]{2,5})?>/<controller:\w+>/<action:\w+>' => '<controller>/<action>',
            ],
            'excludedActions' => [
                'site/login',
                'site/logout',
            ],
            'languages' => [
                'en-US' => 'English',
                'ru' => 'Ruscha',
                'uz' => 'Uzbek',
            ],
            'languageRedirects' => [
                'en-US' => 'en',
            ]
        ],
        'assetManager' => [
            'bundles' => [
                'yii\bootstrap4\BootstrapAsset' => [
                    'sourcePath' => null,
                    'baseUrl' => '',
                    'css' => [
                        'assets/vendor/bootstrap/css/bootstrap.min.css'
                    ],
                ],
            ],
        ],
    ],
    'params' => $params,
];
