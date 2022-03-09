<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "header".
 *
 * @property int $id
 * @property string|null $img
 * @property int|null $created_at
 * @property int|null $updated_at
 *
 * @property HeaderLang[] $headerLangs
 */
class Header extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'header';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['created_at', 'updated_at'], 'integer'],
            [['img'], 'string', 'max' => 100],
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

    /**
     * Gets query for [[HeaderLangs]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getHeaderLangs()
    {
        return $this->hasMany(HeaderLang::className(), ['owner_id' => 'id']);
    }
}
