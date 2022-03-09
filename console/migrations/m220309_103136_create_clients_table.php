<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%clients}}`.
 */
class m220309_103136_create_clients_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%clients}}', [
            'id' => $this->primaryKey(),
            'img'=>$this->string(),
            'title'=>$this->string(),
            'created_at'=>$this->integer(),
            'updated_at'=>$this->integer(),
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%clients}}');
    }
}
