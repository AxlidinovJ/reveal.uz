<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%contact_add_column}}`.
 */
class m220311_064045_create_contact_add_column_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->addColumn('contact','status',$this->integer());
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropColumn('contact','status');
    }
}
