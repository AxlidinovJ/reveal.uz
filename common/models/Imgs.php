<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "imgs".
 *
 * @property int $id
 * @property int|null $products_id
 * @property string|null $name
 *
 * @property Portfolio $products
 */
class Imgs extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'imgs';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['products_id'], 'integer'],
            [['name'], 'string', 'max' => 255],
            [['products_id'], 'exist', 'skipOnError' => true, 'targetClass' => Portfolio::className(), 'targetAttribute' => ['products_id' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'products_id' => Yii::t('app', 'Products ID'),
            'name' => Yii::t('app', 'Name'),
        ];
    }

    /**
     * Gets query for [[Products]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getProducts()
    {
        return $this->hasOne(Portfolio::className(), ['id' => 'products_id']);
    }
}
