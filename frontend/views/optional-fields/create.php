<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model frontend\models\OptionalFields */

$this->title = Yii::t('app', 'Create Optional Fields');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Optional Fields'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="optional-fields-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
