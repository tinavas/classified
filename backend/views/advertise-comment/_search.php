<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\AdvertiseCommentSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="advertise-comment-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'advertise_id') ?>

    <?= $form->field($model, 'create_at') ?>

    <?= $form->field($model, 'title') ?>

    <?= $form->field($model, 'author_name') ?>

    <?php // echo $form->field($model, 'author_email') ?>

    <?php // echo $form->field($model, 'body') ?>

    <?php // echo $form->field($model, 'enabled') ?>

    <?php // echo $form->field($model, 'status') ?>

    <?php // echo $form->field($model, 'mark_spam') ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Search'), ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton(Yii::t('app', 'Reset'), ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
