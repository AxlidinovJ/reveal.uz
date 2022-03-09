<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%about_lang}}`.
 */
class m220309_091148_create_about_lang_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%about_lang}}', [
            'id' => $this->primaryKey(),
            'owner_id'=>$this->integer(),
            'language'=>$this->string(6),
            'title'=>$this->string(),
            'subtitle'=>$this->string(100),
            'items'=>$this->string(100),
        ]);
        $this->addForeignKey('fk_about_lang','{{%about_lang}}','owner_id','{{%about}}','id','CASCADE','CASCADE');
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropForeignKey('fk_about_lang','{{%about_lang}}');
        $this->dropTable('{{%about_lang}}');
    }
}
