<?php

namespace common\models;

use Yii;
use yii\behaviors\TimestampBehavior;

/**
 * This is the model class for table "portfolio_category".
 *
 * @property int $id
 * @property string|null $title
 * @property int|null $created_at
 * @property int|null $updated_at
 */
class PortfolioCategory extends \yii\db\ActiveRecord
{
  
    public static function tableName()
    {
        return 'portfolio_category';
    }

    public function behaviors()
    {
        return [
            TimestampBehavior::class,
        ];
    }

    public function rules()
    {
        return [
            [['created_at', 'updated_at'], 'integer'],
            [['title'], 'string', 'max' => 50],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'title' => Yii::t('app', 'Title'),
            'created_at' => Yii::t('app', 'Created At'),
            'updated_at' => Yii::t('app', 'Updated At'),
        ];
    }

    public function  getCategoryPartfolioCount(){

        return $this->hasMany(Portfolio::class,['category_id' => 'id'])->count();
    }
}
