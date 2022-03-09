<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%testimonial}}`.
 */
class m220309_103415_create_testimonial_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%testimonial}}', [
            'id' => $this->primaryKey(),
            'img'=>$this->string()
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%testimonial}}');
    }
}
