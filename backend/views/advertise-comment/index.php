<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\AdvertiseCommentSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Advertise Comments');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="advertise-comment-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a(Yii::t('app', 'Create Advertise Comment'), ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'advertise_id',
            'create_at',
            'title',
            'author_name',
            // 'author_email:email',
            // 'body:ntext',
            // 'enabled',
            // 'status',
            // 'mark_spam',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
