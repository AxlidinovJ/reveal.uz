<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\Portfolio;

/**
 * PortfolioSearch represents the model behind the search form of `common\models\Portfolio`.
 */
class PortfolioSearch extends Portfolio
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'date', 'created_at', 'updated_at'], 'integer'],
            [['category_id','title'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Portfolio::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            // 'category_id' => $this->category_id,
            'date' => $this->date,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ]);
        $query->joinWith('category');
        $query->joinWith('translations');

        $query->andFilterWhere(['like', 'title', $this->category_id]);
        $query->andFilterWhere(['like', 'portfolio_lang.title', $this->title]);

        return $dataProvider;
    }
}
