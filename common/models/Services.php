<?php

namespace common\models;

use Yii;
use yeesoft\multilingual\behaviors\MultilingualBehavior;
use yeesoft\multilingual\db\MultilingualLabelsTrait;
use yeesoft\multilingual\db\MultilingualQuery;
use yii\behaviors\TimestampBehavior;

class Services extends \yii\db\ActiveRecord
{
    use MultilingualLabelsTrait;

    
    public static function tableName()
    {
        return 'services';
    }

    public function rules()
    {
        return [
            [['created_at', 'updated_at'], 'integer'],
            [['img'], 'string', 'max' => 255],
            [['title','content'],'string'],
            [['title','content','img'],'required'],

        ];
    }
    public function behaviors()
    {
        return [
            'multilingual' => [
                'class' => MultilingualBehavior::className(),
                'languages' => [
                    'en-US' => 'English',
                    'ru' => 'Ruski',
                    'uz'=>'Uzbek',
                ],
                'attributes' => [
                    'title', 'content',
                ]
            ],
            TimestampBehavior::class,

        ];
    }

    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'img' => Yii::t('app', 'Img'),
            'created_at' => Yii::t('app', 'Created At'),
            'updated_at' => Yii::t('app', 'Updated At'),
        ];
    }

    public static function find()
    {
        return new MultilingualQuery(get_called_class());
    }

}
