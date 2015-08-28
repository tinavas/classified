<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "catetory_additional_fields".
 *
 * @property integer $id
 * @property integer $advertise_id
 * @property integer $optional_field_id
 * @property string $optional_field_value
 */
class CatetoryAdditionalFields extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'catetory_additional_fields';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['advertise_id', 'optional_field_id', 'optional_field_value'], 'required'],
            [['advertise_id', 'optional_field_id'], 'integer'],
            [['optional_field_value'], 'string']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'advertise_id' => Yii::t('app', 'Advertise ID'),
            'optional_field_id' => Yii::t('app', 'Optional Field ID'),
            'optional_field_value' => Yii::t('app', 'Optional Field Value'),
        ];
    }
}
