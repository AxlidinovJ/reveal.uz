<?php

namespace common\models;

use yeesoft\multilingual\behaviors\MultilingualBehavior;
use yeesoft\multilingual\db\MultilingualLabelsTrait;
use yeesoft\multilingual\db\MultilingualQuery;
use Yii;
use yii\behaviors\TimestampBehavior;


class Portfolio extends \yii\db\ActiveRecord
{
    use MultilingualLabelsTrait;


    public static function tableName()
    {
        return 'portfolio';
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
                    'title', 'content','clent',
                ]
            ],
            TimestampBehavior::class,

        ];
    }


    public function rules()
    {
        return [
            [['category_id', 'date', 'created_at', 'updated_at'], 'integer'],
            [['title','content','clent'],'string'],
            ['img','file','extensions'=>'jpg,png,bmp,jpeg','maxFiles' => 6],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'category_id' => Yii::t('app', 'Category ID'),
            'date' => Yii::t('app', 'Date'),
            'created_at' => Yii::t('app', 'Created At'),
            'updated_at' => Yii::t('app', 'Updated At'),
            'img' => Yii::t('app', 'Imgs'),
        ];
    }

    public static function find()
    {
        return new MultilingualQuery(get_called_class());
    }

    public function getImgs()
    {
        return $this->hasMany(Imgs::className(), ['products_id' => 'id']);
    }

    public function getCategory()
    {
        return $this->hasOne(PortfolioCategory::className(), ['id' => 'category_id']);
    }


    // public function getPortfolioLangs()
    // {
    //     return $this->hasMany(PortfolioLang::className(), ['owner_id' => 'id']);
    // }
}
