<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%testimonial_lang}}`.
 */
class m220309_103422_create_testimonial_lang_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%testimonial_lang}}', [
            'id' => $this->primaryKey(),
            'owner_id'=>$this->integer(),
            'language'=>$this->string(),
            'name'=>$this->string(),
            'field'=>$this->string(),
            'text'=>$this->string(),
        ]);
        $this->addForeignKey('fk_testimonial_lang','{{%testimonial_lang}}','owner_id','{{%testimonial}}','id','CASCADE','CASCADE');

    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropForeignKey('fk_testimonial_lang','{{%testimonial_lang}}');
        $this->dropTable('{{%testimonial_lang}}');
    }
}
