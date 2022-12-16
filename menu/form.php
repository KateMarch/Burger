<?php
$db = require $_SERVER['DOCUMENT_ROOT'] . '/common/db.php';
$items = $db->query("SELECT id, name, price, description, img FROM menu ");
?>
<div class="best_burgers_area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section_title text-center mb-80">
                    <span>Burger Menu</span>
                    <h3>Best Ever Burgers</h3>
                </div>
            </div>
        </div>

        <div class="row">
            <?php foreach ($items as $item):?>
            <div class="col-xl-6 col-md-6 col-lg-6">
                <div class="single_delicious d-flex align-items-center">
                    <div class="thumb">
                        <img src="<?=$item['img']?>" alt="">
                    </div>
                    <div class="info">
                        <h3><?=$item['name']?></h3>
                        <p></p>
                        <span><?=$item['price']?>₽</span>
                    </div>
                </div>
            <a href="/Menu.php?id=<?=$item['id']?>" class="primary-btn">Подробнее</a>

            </div>
            <?php endforeach;?>
        </div>
    </div>
</div>
