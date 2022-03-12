<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%contact_add_column}}`.
 */
class m220312_044844_create_contact_add_column_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->addColumn('contact','')
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%contact_add_column}}');
    }
}
