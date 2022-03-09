<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%imgs}}`.
 */
class m220309_104903_create_imgs_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%imgs}}', [
            'id' => $this->primaryKey(),
            'products_id'=>$this->integer(),
            'name'=>$this->string(),
        ]);
        $this->addForeignKey('fk_products_img','{{%imgs}}','products_id','{{%portfolio}}','id','CASCADE','CASCADE');
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropForeignKey('fk_products_img','{{%imgs}}');
        $this->dropTable('{{%imgs}}');
    }
}
