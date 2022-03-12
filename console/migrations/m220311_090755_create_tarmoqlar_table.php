<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%tarmoqlar}}`.
 */
class m220311_090755_create_tarmoqlar_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%tarmoqlar}}', [
            'id' => $this->primaryKey(),
            'img'=>$this->string(),
            'url'=>$this->string(),
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%tarmoqlar}}');
    }
}
