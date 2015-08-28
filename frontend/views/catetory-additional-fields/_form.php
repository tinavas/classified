<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model frontend\models\CatetoryAdditionalFields */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="catetory-additional-fields-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'advertise_id')->textInput() ?>

    <?= $form->field($model, 'optional_field_id')->textInput() ?>

    <?= $form->field($model, 'optional_field_value')->textarea(['rows' => 6]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? Yii::t('app', 'Create') : Yii::t('app', 'Update'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
