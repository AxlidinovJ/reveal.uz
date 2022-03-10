<?php

namespace common\models;

use Yii;

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
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'testimonial';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['img'], 'string', 'max' => 255],
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
        ];
    }

    /**
     * Gets query for [[TestimonialLangs]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getTestimonialLangs()
    {
        return $this->hasMany(TestimonialLang::className(), ['owner_id' => 'id']);
    }
}
