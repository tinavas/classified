<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use yii\grid\DataColumn;

/* @var $this yii\web\View */
/* @var $model backend\models\Advertisement */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Advertisements'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="advertisement-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Yii::t('app', 'Update'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a(Yii::t('app', 'Delete'), ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => Yii::t('app', 'Are you sure you want to delete this item?'),
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            //'user_id',

            [                      // the owner name of the model
            'label' => 'User ID',
            $user = \backend\models\User::find()->where(['id'=>$model->user_id])->one(),
            'value' => $user->username,
            ],

            //'category_id',
            [                      // the owner name of the model
            'label' => 'Category',
            $category = \backend\models\Category::find()->where(['id'=>$model->category_id])->one(),
            'value' => $category->title,
            ],
            'advertise_title',
            'photo_name',
            'description:ntext',
            'price',
            'contact_name',
            'email:email',
            'mobile_number',
            'state_id',
            'city_id',
            'address:ntext',
            'status',
        ],
    ]) ?>

</div>
