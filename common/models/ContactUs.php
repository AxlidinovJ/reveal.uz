<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "contact_us".
 *
 * @property int $id
 * @property string|null $addres
 * @property string|null $phone
 * @property string|null $email
 * @property string|null $location
 */
class ContactUs extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'contact_us';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['location'], 'string'],
            [['addres', 'phone', 'email'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'addres' => Yii::t('app', 'Addres'),
            'phone' => Yii::t('app', 'Phone'),
            'email' => Yii::t('app', 'Email'),
            'location' => Yii::t('app', 'Location'),
        ];
    }
}
