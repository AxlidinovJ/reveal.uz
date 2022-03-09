<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%services_lang}}`.
 */
class m220309_103113_create_services_lang_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%services_lang}}', [
            'id' => $this->primaryKey(),
            'owner_id'=>$this->integer(),
            'language'=>$this->string(),
            'title'=>$this->string(),
            'content'=>$this->text(),
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%services_lang}}');
    }
}
