<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%portfolio_category}}`.
 */
class m220309_103251_create_portfolio_category_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%portfolio_category}}', [
            'id' => $this->primaryKey(),
            'title'=>$this->string(50),
            'created_at'=>$this->integer(),
            'updated_at'=>$this->integer(),
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%portfolio_category}}');
    }
}
