<?php
$db = require $_SERVER['DOCUMENT_ROOT'] . '/common/db.php';
$items = $db->query("SELECT id, text, name, image FROM feedback ")
?>
<div class="testimonial_area ">

    <div class="container">

        <div class="row">

            <div class="col-xl-12">
                <div class="section_title mb-60 text-center">
                    <span>Testimonials</span>
                    <h3>Happy Customers</h3>
                </div>
            </div>
        </div>

        <div class="row">
            <?php foreach ($items as $item):?>
            <div class="col-xl-12">
                <div class="testmonial_active owl-carousel">
                    <div class="single_carousel">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="single_testmonial text-center">
                                    <p><?=$item['text']?></p>
                                    <div class="testmonial_author">
                                        <div class="thumb">
                                            <img src="<?=$item['image']?>" alt="">
                                        </div>
                                        <h4><?=$item['name']?></h4>
                                        <div class="stars">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-half"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php endforeach;?>
        </div>

    </div>
</div>