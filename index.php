<?php 
//////////страница категорий//////////
    session_start();    
    error_reporting(-1);
    require_once __DIR__ .'/vendor/connect.php';
    require_once __DIR__ .'/vendor/category_funks.php';
    require_once __DIR__ .'/vendor/categories_funks.php';
    require_once __DIR__ .'/vendor/funcs.php';
    $categories = get_categories();
    

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="card.css">
    <title>Категории</title>
</head>
<body>
    <header>
        <div class="nav">
            <div class="logo"> <a href=""><img src="/img/icons8-party-mask-64.png" alt=""></a></div>
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
    <div class="container">
        <div class="title"><h1>Категории костюмов</h1></div>
        <div class="container">
        <?php if (!empty($categories)): ?>
        <?php foreach ($categories as $category ): ?>
           
        <div class="card1">
        <a href="category.php?cat=<?= $category['section_id']?>">
            <img src="<?= $category['preview_img']?>" alt="text">
            <div class="card1_label">
                <p style="font-family: cursive;">
                <?= $category['heading']?>
                </p>
            </div>
            </a>
        </div>
        <?php endforeach; ?>
        <?php  endif; ?>
      </div>
    </div> 
   
  
</body>
</html>