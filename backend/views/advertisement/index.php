<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\grid\DataColumn;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\AdvertisementSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Advertisements');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="advertisement-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a(Yii::t('app', 'Create Advertisement'), ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',

            //'user_id',
            [
                'class' => DataColumn::className(),
                'attribute' => 'user_id',
                'format' => 'text',
                'value' => function($model, $index, $column) {
                   $user = \backend\models\User::find()->where(['id'=>$model->user_id])->one();
                    return $user? $user->username : 'Unknown';
                },
                'label' => 'User Name',
            ],


            //'category_id',
            [
                'class' => DataColumn::className(),
                'attribute' => 'category_id',
                'format' => 'text',
                'value' => function($model, $index, $column) {
                   $category = \backend\models\Category::find()->where(['id'=>$model->category_id])->one();
                    return $category? $category->title : 'Unknown';
                },
                'label' => 'Category Name',
            ],


            'advertise_title',
            'photo_name',
            // 'description:ntext',
            // 'price',
            // 'contact_name',
            // 'email:email',
            // 'mobile_number',
            // 'state_id',
            // 'city_id',
            // 'address:ntext',
            // 'status',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
