<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%header_lang}}`.
 */
class m220309_091133_create_header_lang_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%header_lang}}', [
            'id' => $this->primaryKey(),
            'owner_id'=>$this->integer(),
            'language'=>$this->string(6),
            'title'=>$this->string(222),
            'about_btn'=>$this->string(100),
            'project_btn'=>$this->string(100),
        ]);
        $this->addForeignKey('fk_header_lang','{{%header_lang}}','owner_id','{{%header}}','id','CASCADE','CASCADE');
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropForeignKey('fk_header_lang','{{%header_lang}}');
        $this->dropTable('{{%header_lang}}');
    }
}
