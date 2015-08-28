<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model backend\models\AdvertiseComment */

$this->title = Yii::t('app', 'Create Advertise Comment');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Advertise Comments'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="advertise-comment-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
