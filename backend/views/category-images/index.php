<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\grid\DataColumn;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\CategoryImagesSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Category Images');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="category-images-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a(Yii::t('app', 'Create Category Images'), ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
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
            'image',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
