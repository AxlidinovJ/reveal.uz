<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "tarmoqlar".
 *
 * @property int $id
 * @property string|null $img
 * @property string|null $url
 */
class Tarmoqlar extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'tarmoqlar';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['img', 'url'], 'string', 'max' => 255],
            [['img', 'url'], 'required'],
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
            'url' => Yii::t('app', 'Url'),
        ];
    }
}
