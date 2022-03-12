<?php

namespace common\models;

use Yii;
use yii\behaviors\TimestampBehavior;

/**
 * This is the model class for table "contact".
 *
 * @property int $id
 * @property string|null $name
 * @property string|null $phone
 * @property string|null $title
 * @property string|null $content
 */
class Contact extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'contact';
    }

  
  

    public function rules()
    {
        return [
            [['content'], 'string'],
            [['status','created_at', 'updated_at'],'integer'],
            [['name', 'phone', 'title'], 'string', 'max' => 255],
            [['name', 'phone', 'title','content','status'], 'required'],
            
        ];
    }

    public function behaviors()
    {
        return [
            TimestampBehavior::className(),
        ];
    }
    
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'name' => Yii::t('app', 'Name'),
            'phone' => Yii::t('app', 'Phone'),
            'title' => Yii::t('app', 'Title'),
            'content' => Yii::t('app', 'Content'),
            'status'=>Yii::t('app','status'),
            'created_at'=>Yii::t('app','Kelgan vaqti'),
            'updated_at'=>Yii::t('app','Taxrirlangan vaqti'),
        ];
    }
}
