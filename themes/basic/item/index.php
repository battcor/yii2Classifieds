<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\ListView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\UserSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Items';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="col-md-9">

    
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p><?//= Html::a('Create User', ['user/create'], ['class' => 'btn btn-success']) ?></p>
    
    <div class="row carousel-holder">
        <div class="col-md-12">
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <?= Html::img('@web/themes/basic/images/800_300.png', ['alt' => '', 'class' => 'slide-image']); ?>
                    </div>
                    <div class="item">
                        <?= Html::img('@web/themes/basic/images/800_300.png', ['alt' => '', 'class' => 'slide-image']); ?>
                    </div>
                    <div class="item">
                        <?= Html::img('@web/themes/basic/images/800_300.png', ['alt' => '', 'class' => 'slide-image']); ?>
                    </div>
                </div>
                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
        </div>

    </div>

    <div class="row">

        <?= ListView::widget([
            'dataProvider' => $dataProvider,
            'itemView' => '/item/_item',
            'layout' => "{items}{pager}",
        ]); ?>

    </div>

    <?php 
//    echo GridView::widget([
//        'dataProvider' => $dataProvider,
//        'filterModel' => $searchModel,
//        'columns' => [
//            ['class' => 'yii\grid\SerialColumn'],
//
//            'id',
//            'username',
//            'password',
//
//            ['class' => 'yii\grid\ActionColumn'],
//        ],
//    ]); 
    ?>

</div>
