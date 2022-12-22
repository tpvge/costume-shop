<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Document</title>
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
                <a href="" style="font-size: 50px;text-decoration: none;">&#9993;</a>
            </div>
        </div>

    </header>
    <div class="back"><a class="btn_back" href="index.php">На Главную</a></div>
    <div class="doc-title">ДОКУМЕНТАЦИЯ</div>
    <div class="docu">
        <a href="/documents/ПРАВОВЕДЕНИЕ.docx">Лицензионное соглашение</a>
        <a href="/documents/ПРАВОВЕДЕНИЕ.docx">Пользовательское соглашение</a>
        <a href="/documents/ПРАВОВЕДЕНИЕ.docx">Еще какое-то соглашение</a>
    </div>
</body>
</html>