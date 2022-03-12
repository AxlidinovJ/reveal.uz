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
        $this->addColumn('contact','created_at',$this->integer());
        $this->addColumn('contact','updated_at',$this->integer());
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropColumn('contact','created_at');
        $this->dropColumn('contact','updated_at');
    }
}
