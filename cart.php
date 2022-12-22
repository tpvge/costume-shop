<?php
session_start();
require_once 'vendor/cart_upload.php';
if(!empty($_SESSION['user']['id'])){
$cart=get_cart_upload($id);}
$backk = $_SERVER['HTTP_REFERER'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/cart_style.css">
    <title>Корзина</title>
</head>
<body>
    <head>
        <div class="header">
            <a href="index.php" class="back">На главную</a>
        </div>
        <div class="title">Корзина</div>
    </head>
    <main>
    <div class="container">
    <?php if(empty($_SESSION['user']) or empty($cart)){ ?> 
        <div class="block">
        <div class="col_title">    
            <div class="prod">Корзина ПУСТА</div>
        </div>
            
        </div>
        
        <?php } else { ?>
    <?php if (!empty($cart)){ ?>
        <div class="block">
        <div class="col_title">    
            <div class="prod">Товар</div>
            <div class="count">Количество</div>
            <div class="price_count">Цена</div>
        </div>
        <?php foreach ($cart as $pro ): ?>
        <div class="block-product">
            <div class="left">
            <div class="image"><img src="<?= $pro['img']?>" alt="товар"></div>
            <div class="center">
                <div class="heading" style="font-weight: 700"><?= $pro['heading']?></div>
                <div class="price"><?= $pro['price']?> <span>&#8381;</span></div>
            </div>
            </div>
            <div class="colvo">
                <div class="count"><?= $pro['count']?></div>
            </div>
            <div class="price_count"><?= $pro['total']?> <span>&#8381;</span></div>
            <div class="delete"><a href="cart.php?del=<?php echo $pro['id'] ?>" class="del">&#10060;</a></div>
            </div>
            <?php endforeach ?>
        </div>
        <div class="bay">
            <button >КУПИТЬ!</button>
        </div>
        
    </div>
           
            
                <?php } ?>
            <?php } ?>
        </div>
    </main>
</body>
</html>