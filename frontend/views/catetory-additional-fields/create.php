<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model frontend\models\CatetoryAdditionalFields */

$this->title = Yii::t('app', 'Create Catetory Additional Fields');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Catetory Additional Fields'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="catetory-additional-fields-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
