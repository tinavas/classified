<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "advertise_comment".
 *
 * @property integer $id
 * @property integer $advertise_id
 * @property string $create_at
 * @property string $title
 * @property string $author_name
 * @property string $author_email
 * @property string $body
 * @property integer $enabled
 * @property integer $status
 * @property integer $mark_spam
 */
class AdvertiseComment extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'advertise_comment';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['advertise_id', 'enabled', 'status', 'mark_spam'], 'integer'],
            [['create_at'], 'safe'],
            [['body'], 'string'],
            [['title'], 'string', 'max' => 200],
            [['author_name', 'author_email'], 'string', 'max' => 100]
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
            'create_at' => Yii::t('app', 'Create At'),
            'title' => Yii::t('app', 'Title'),
            'author_name' => Yii::t('app', 'Author Name'),
            'author_email' => Yii::t('app', 'Author Email'),
            'body' => Yii::t('app', 'Body'),
            'enabled' => Yii::t('app', 'Enabled'),
            'status' => Yii::t('app', 'Status'),
            'mark_spam' => Yii::t('app', 'Mark Spam'),
        ];
    }
}
