<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%portfolio}}`.
 */
class m220309_103305_create_portfolio_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%portfolio}}', [
            'id' => $this->primaryKey(),
            'category_id'=>$this->integer(),
            'date'=>$this->integer(),
            'url'=>$this->string(),
            'created_at'=>$this->integer(),
            'updated_at'=>$this->integer(),
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%portfolio}}');
    }
}
