<?php

use yii\helpers\Html;
use yii\helpers\HtmlPurifier;

$itemName = HtmlPurifier::process($model->title);
$itemImg = Html::img('@web/themes/basic/images/320_150.png', ['alt' => $itemName]);
$itemImgUrl = Html::a($itemImg, ['item/view', 'id' => $model->id], ['class' => '']);
$itemTxtUrl = Html::a($itemName, ['item/view', 'id' => $model->id], ['class' => '']);

?>


<div class="col-sm-4 col-lg-4 col-md-4">
    <div class="thumbnail">
        <?= $itemImgUrl ?>
        <div class="caption">
            <h4 class="pull-right">$24.99</h4>
            <h4><?= $itemTxtUrl ?></h4>
            <p><?= $itemName ?> <?= HtmlPurifier::process($model->description) ?></p>
        </div>
        <div class="ratings">
            <p class="pull-right">15 reviews</p>
            <p>
                <span class="glyphicon glyphicon-star"></span>
                <span class="glyphicon glyphicon-star"></span>
                <span class="glyphicon glyphicon-star"></span>
                <span class="glyphicon glyphicon-star"></span>
                <span class="glyphicon glyphicon-star"></span>
            </p>
        </div>
    </div>
</div>