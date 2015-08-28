<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "optional_fields".
 *
 * @property integer $id
 * @property string $titles
 * @property string $desc
 * @property integer $status
 */
class OptionalFields extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'optional_fields';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['status'], 'integer'],
            [['titles'], 'string', 'max' => 100],
            [['desc'], 'string', 'max' => 500]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'titles' => Yii::t('app', 'Titles'),
            'desc' => Yii::t('app', 'Desc'),
            'status' => Yii::t('app', 'Status'),
        ];
    }
}
