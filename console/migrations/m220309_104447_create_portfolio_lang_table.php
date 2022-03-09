<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%portfolio_lang}}`.
 */
class m220309_104447_create_portfolio_lang_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%portfolio_lang}}', [
            'id' => $this->primaryKey(),
            'owner_id'=>$this->integer(),
            'language'=>$this->string(),
            'title'=>$this->string(),
            'content'=>$this->text(500),
            'clent'=>$this->string(),
        ]);
        $this->addForeignKey('fk_portfolio_lang','{{%portfolio_lang}}','owner_id','{{%portfolio}}','id','CASCADE','CASCADE');

    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropForeignKey('fk_portfolio_lang','{{%portfolio_lang}}');
        $this->dropTable('{{%portfolio_lang}}');
    }
}
