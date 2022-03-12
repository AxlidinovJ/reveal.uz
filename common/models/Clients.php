<?php

namespace common\models;

use Yii;
use yii\behaviors\TimestampBehavior;

/**
 * This is the model class for table "clients".
 *
 * @property int $id
 * @property string|null $img
 * @property string|null $title
 * @property int|null $created_at
 * @property int|null $updated_at
 */
class Clients extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'clients';
    }

    
    public function behaviors()
    {
        return [
            TimestampBehavior::class,
        ];
    }

    const CREATE = 'create';
    const UPDATE = 'update';

    public function rules()
    {
        return [
            [['created_at', 'updated_at'], 'integer'],
            [['img', 'title'], 'string', 'max' => 255],
            [['img', 'title'], 'required', 'on' => self::CREATE],
            [['title'], 'required', 'on' => self::UPDATE],
            
            
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
            'title' => Yii::t('app', 'Title'),
            'created_at' => Yii::t('app', 'Created At'),
            'updated_at' => Yii::t('app', 'Updated At'),
        ];
    }
}
