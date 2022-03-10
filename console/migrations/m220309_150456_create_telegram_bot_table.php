<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%telegram_bot}}`.
 */
class m220309_150456_create_telegram_bot_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%telegram_bot}}', [
            'id' => $this->primaryKey(),
            'token'=>$this->string(),
            'kanal'=>$this->string(),
            'guruh'=>$this->string(),

        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%telegram_bot}}');
    }
}
