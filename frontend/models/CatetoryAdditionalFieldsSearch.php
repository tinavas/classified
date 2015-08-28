<?php

namespace frontend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use frontend\models\CatetoryAdditionalFields;

/**
 * CatetoryAdditionalFieldsSearch represents the model behind the search form about `frontend\models\CatetoryAdditionalFields`.
 */
class CatetoryAdditionalFieldsSearch extends CatetoryAdditionalFields
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'advertise_id', 'optional_field_id'], 'integer'],
            [['optional_field_value'], 'safe'],
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
        $query = CatetoryAdditionalFields::find();

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
            'optional_field_id' => $this->optional_field_id,
        ]);

        $query->andFilterWhere(['like', 'optional_field_value', $this->optional_field_value]);

        return $dataProvider;
    }
}
