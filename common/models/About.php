<?php

namespace common\models;

use Yii;

use yeesoft\multilingual\behaviors\MultilingualBehavior;
use yeesoft\multilingual\db\MultilingualLabelsTrait;
use yeesoft\multilingual\db\MultilingualQuery;
use yii\behaviors\TimestampBehavior;

class About extends \yii\db\ActiveRecord
{
    use MultilingualLabelsTrait;
   
    public static function tableName()
    {
        return 'about';
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
                    'title', 'subtitle','items',
                ]
            ],
            TimestampBehavior::class,
        ];
    }

    const CREATE = 'create';
    const UPDATE = 'update';

    public function rules()
    {
        return [
            [['created_at', 'updated_at'], 'integer'],
            [['img'], 'string', 'max' => 100],
            [['title', 'subtitle','items'],'string'],
            
            [['title', 'subtitle','items','img'],'required','on'=>self::CREATE],
            [['title', 'subtitle','items'],'required','on'=>self::UPDATE],
            
        ];
    }

    /**
     * {@inheritdoc}
     */
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
    
   
    // public function getAboutLangs()
    // {
    //     return $this->hasMany(AboutLang::className(), ['owner_id' => 'id']);
    // }
}
