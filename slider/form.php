<?php
$db = require $_SERVER['DOCUMENT_ROOT'] . '/common/db.php';
$items = $db->query("SELECT id, picture FROM slider ")
?>
<div class="slider_area">
    <div class="slider_active owl-carousel">
        <div class="single_slider  d-flex align-items-center slider_bg_1 overlay">
            <div class="container">
                <div class="row align-items-center justify-content-center">
                    <div class="col-xl-9 col-md-9 col-md-12">
                        <div class="slider_text text-center">
                            <div class="deal_text">
                                <span>Big Deal</span>
                            </div>
                            <h3>Burger <br>
                                Bachelor</h3>
                            <h4>Maxican</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>