<?php

namespace common\models;

use yeesoft\multilingual\behaviors\MultilingualBehavior;
use yeesoft\multilingual\db\MultilingualLabelsTrait;
use yeesoft\multilingual\db\MultilingualQuery;
use Yii;
use yii\behaviors\TimestampBehavior;

/**
 * This is the model class for table "testimonial".
 *
 * @property int $id
 * @property string|null $img
 *
 * @property TestimonialLang[] $testimonialLangs
 */
class Testimonial extends \yii\db\ActiveRecord
{
    use MultilingualLabelsTrait;


    public static function tableName()
    {
        return 'testimonial';
    }
    const CREATE = 'create';
    const UPDATE = 'update';

    public function rules()
    {
        return [
            [['img'], 'string', 'max' => 255],
            [[ 'text', 'field','name'],'trim'],

            [[ 'text', 'field','name','img'],'required','on'=>self::CREATE],
            [[ 'text', 'field','name'],'required','on'=>self::UPDATE],
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
                    'text', 'field','name',
                ]
            ],
        ];
    }

    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'img' => Yii::t('app', 'Img'),
            'name' => Yii::t('app', 'Name'),
            'field' => Yii::t('app', 'Field'),
            'text' => Yii::t('app', 'Text'),
        ];
    }

   
    // public function getTestimonialLangs()
    // {
    //     return $this->hasMany(TestimonialLang::className(), ['owner_id' => 'id']);
    // }

    public static function find()
    {
        return new MultilingualQuery(get_called_class());

    }
}
