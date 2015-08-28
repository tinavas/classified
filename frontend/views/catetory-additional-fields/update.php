<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model frontend\models\CatetoryAdditionalFields */

$this->title = Yii::t('app', 'Update {modelClass}: ', [
    'modelClass' => 'Catetory Additional Fields',
]) . ' ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Catetory Additional Fields'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = Yii::t('app', 'Update');
?>
<div class="catetory-additional-fields-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
