<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model frontend\models\TmpUser */

$this->title = Yii::t('app', 'Create Tmp User');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Tmp Users'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tmp-user-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
