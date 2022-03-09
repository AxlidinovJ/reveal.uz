<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%contact_us}}`.
 */
class m220309_103602_create_contact_us_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%contact_us}}', [
            'id' => $this->primaryKey(),
            'addres'=>$this->string(),
            'phone'=>$this->string(),
            'email'=>$this->string(),
            'location'=>$this->text(),
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%contact_us}}');
    }
}
