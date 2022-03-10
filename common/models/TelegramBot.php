<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "telegram_bot".
 *
 * @property int $id
 * @property string|null $token
 * @property string|null $kanal
 * @property string|null $guruh
 */
class TelegramBot extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'telegram_bot';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['token', 'kanal', 'guruh'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'token' => Yii::t('app', 'Token'),
            'kanal' => Yii::t('app', 'Kanal'),
            'guruh' => Yii::t('app', 'Guruh'),
        ];
    }
}
