<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\AdvertiseComment;

/**
 * AdvertiseCommentSearch represents the model behind the search form about `backend\models\AdvertiseComment`.
 */
class AdvertiseCommentSearch extends AdvertiseComment
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'advertise_id', 'enabled', 'status', 'mark_spam'], 'integer'],
            [['create_at', 'title', 'author_name', 'author_email', 'body'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
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
        $query = AdvertiseComment::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id' => $this->id,
            'advertise_id' => $this->advertise_id,
            'create_at' => $this->create_at,
            'enabled' => $this->enabled,
            'status' => $this->status,
            'mark_spam' => $this->mark_spam,
        ]);

        $query->andFilterWhere(['like', 'title', $this->title])
            ->andFilterWhere(['like', 'author_name', $this->author_name])
            ->andFilterWhere(['like', 'author_email', $this->author_email])
            ->andFilterWhere(['like', 'body', $this->body]);

        return $dataProvider;
    }
}
