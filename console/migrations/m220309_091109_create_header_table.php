<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%header}}`.
 */
class m220309_091109_create_header_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%header}}', [
            'id' => $this->primaryKey(),
            'img'=>$this->string(100),
            'created_at'=>$this->integer(),
            'updated_at'=>$this->integer(),
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%header}}');
    }
}
