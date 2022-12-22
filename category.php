<?php 
////////страница товаров в категории//////////////
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
    <link rel="stylesheet" href="card.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
<?php if (!empty($category)): ?>
    <title><? echo $category[0]['heading']; ?></title>
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
    <div class="back"><a class="btn_back" href="index.php">Назад</a></div>

<div class="block">
    <?php foreach ($category as $cat ): ?>
        <p class="data"></p>
        <h1 style="font-family: cursive;"><?= $cat['heading']?></h1>
        <p class="text" style="font-family: cursive;">Здесь представлены все товары категории: <?= $cat['description']?></p>
        <?php endforeach; ?>
        <?php  endif; ?>
    </div>
    <div class="container">
        <?php if (!empty($products)): ?>
        <?php foreach ($products as $product ): ?>
           
        <div class="card1">
        <a href="product.php?id=<?= $product['product_id']?>">
            <img src="<?= $product['link']?>" alt="<?= $product['alt']?>">
            <div class="card1_label">
                <p style="font-family: cursive;">
                <?= $product['heading']?>
                </p>
            </div>
            </a>
        </div>
        <?php endforeach; ?>
        <?php  endif; ?>
      </div>
      <footer> 
        <div class="nav"> 
            <div class="page"> 
                <?php 
                    $queries = []; 
                    parse_str($_SERVER['QUERY_STRING'], $queries); 
 
                    for ($i = 1; $i <= $str_pag; $i++): 
                        $queries['page'] = $i; 
                        $query_string = http_build_query($queries); 
                        echo "<a href=category.php?{$query_string}> Страница ".$i." </a>"; 
                    endfor; 
                ?> 
            </div> 
        </div> 
    </footer>
</body>
</html>