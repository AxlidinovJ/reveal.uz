<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%services}}`.
 */
class m220309_103103_create_services_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%services}}', [
            'id' => $this->primaryKey(),
            'img'=>$this->string(),
            'created_at'=>$this->integer(),
            'updated_at'=>$this->integer(),
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%services}}');
    }
}
