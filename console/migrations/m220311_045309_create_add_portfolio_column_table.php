<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%add_portfolio_column}}`.
 */
class m220311_045309_create_add_portfolio_column_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
       $this->addColumn('portfolio','url', $this->string());
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropColumn('portfolio','url');
    }
}
