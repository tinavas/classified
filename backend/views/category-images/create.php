<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model backend\models\CategoryImages */

$this->title = Yii::t('app', 'Create Category Images');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Category Images'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="category-images-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
