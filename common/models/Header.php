<?php

namespace common\models;

use Yii;


use yeesoft\multilingual\behaviors\MultilingualBehavior;
use yeesoft\multilingual\db\MultilingualLabelsTrait;
use yeesoft\multilingual\db\MultilingualQuery;
use yii\behaviors\TimestampBehavior;

class Header extends \yii\db\ActiveRecord
{
    use MultilingualLabelsTrait;


    public static function tableName()
    {
        return 'header';
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
                    'title', 'about_btn','project_btn',
                ]
            ],
            TimestampBehavior::class,

        ];
    }

    public function rules()
    {
        return [
            [['created_at', 'updated_at'], 'integer'],
            [['img'], 'file', 'extensions' => 'jpg,png,bmp,jpeg'],
            [['title', 'about_btn','project_btn'],'string','min'=>4,'max'=>255],
        ];
    }

    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'img' => Yii::t('app', 'Img'),
            'created_at' => Yii::t('app', 'Created At'),
            'updated_at' => Yii::t('app', 'Updated At'),
            'title' => Yii::t('app', 'Title'),
            'about_btn' => Yii::t('app', 'About btn'),
            'project_btn' => Yii::t('app', 'Project btn'),
        ];
    }

    public static function find()
    {
        return new MultilingualQuery(get_called_class());
    }
    
    // public function getHeaderLangs()
    // {
    //     return $this->hasMany(HeaderLang::className(), ['owner_id' => 'id']);
    // }
}
