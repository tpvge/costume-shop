<?php 
//////////страница продукта/////////////
    session_start();
    error_reporting(-1);
    require_once __DIR__ .'/vendor/connect.php';
    require_once __DIR__ .'/vendor/funcs.php';
    require_once __DIR__ .'/vendor/category_funks.php';
    require_once __DIR__ .'/vendor/product_funks.php';



?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
   
    <link href = "font/stylesheet.css" rel = "stylesheet" type = "text/css" />
    <?php if ((!empty($item)) &&(!empty($images)) &&(!empty($cates))): ?>
    <title><? echo $item['heading']; ?></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
    <link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
    
</head>
<body>
<header>
        <div class="nav">
            <div class="logo"> <a href="index.php"><img src="/img/icons8-party-mask-64.png" alt=""></a></div>
            <div class="nav_title">Весело и точка!</div>
            <div class="btn_cart">
            <a href="cart.php"><img src="/img/icons8-полная-корзина-64.png" alt=""></a>
            </div>
            <div class="login">
            <?php
                
                if(empty($_SESSION['user'])){ ?>
                <a href="/signin.php">Вход</a>
                <?php } else { ?>
               <a href="/vendor/stop.php">Выход</a>
               <?php }?>
           
            </div>
            <div class="doc" style="margin-top: 3px;width: 50px;">
                <a href="doc.php" style="font-size: 50px;text-decoration: none;">&#9993;</a>
            </div>
        </div>

    </header>
<div class="back"><a class="btn_back" href="category.php?cat=<?=$_COOKIE["cat"]?>">Назад</a></div>
    <div class="main">
   
    <div class="container">
        <div class="images">
            
            <div class="imagas_one">
                <img class="big" src="<?= $images[0]['main_img']?>" alt="" style="width: 450px; height:492px; margin-top: 30px; margin-left: 20px; " >
            </div>
        </div>
        <div class="product">
            <div class="product_name"><H2><?= $item['heading']?></H2></div>
            <div class="product_category">
            <?php foreach ($cates as $ca ): ?>
                <a href="category.php?cat=<?= $ca['section']?>"><?= $ca['category']?></a>
                
                <?php endforeach  ?>    
            </div>
            <div class="product_price">
                
                <div class="product_price_promo"><?= $item['price']?> <span class="rub">Р</span></div>
            </div>
           <form method="POST" action="vendor/cart_funcs.php">
            <div class="product_count">
                <button type="button" id="buttonCountMinus" class="product_count_minus">-</button>
                <input id="CountNumber" type="number" name="count" value="1" min="1">
                <button type="button" id="buttonCountPlus" class="product_count_plus">+</button>
            </div>
            <div class="product_btn">
            <?php
                 if(empty($_SESSION['user'])){ ?>
                <button id="myBtnn" onclick="successing()" type="button" class="product_btn_buy">Войдите в аккаунт</button>
                <?php } else { ?>
                    <button id="myBtn" onclick="success()" type="submit" name="five" value="<?= $item['product_id']?>" class="product_btn_buy">В Корзину</button>
                <?php }?>
            </div>
            </form>
            <div class="product_info"><p style="font-size: 20px;"><?= $item['descripiton']?></p></div>
           
        </div>
    </div>
    <?php  endif; ?>
</div>        
            <!-- JS -->
<script type="text/javascript" src="scripts.js"></script>

</body>
</html>