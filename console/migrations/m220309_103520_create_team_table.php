<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%team}}`.
 */
class m220309_103520_create_team_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%team}}', [
            'id' => $this->primaryKey(),
            'name'=>$this->string(),
            'img'=>$this->string(),
            'field'=>$this->string(),
            'twitter'=>$this->string(),
            'telegram'=>$this->string(),
            'ok'=>$this->string(),
            'linkedin'=>$this->string(),
            'created_at'=>$this->integer(),
            'updated_at'=>$this->integer(),
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%team}}');
    }
}
