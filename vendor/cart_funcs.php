<?php
   session_start();
require_once 'connect.php';
$count = 1;
$count = $_POST['count'];
$five = (int)$_POST['five'];
$back = $_SERVER['HTTP_REFERER'];
var_dump($back);
var_dump($count);

var_dump($five);

//header('Location: ../cart.php');
$prod_cart=get_prod_cart($five);
function get_prod_cart($five): array{      //получение информации о товаре(название, цены, описание)
    global $pdo;    
    $where_id = " p.product_id = $five ";
    $res = $pdo -> query("SELECT DISTINCT p.heading, p.price, i.link AS main_img
FROM
    product p
        LEFT JOIN
    main_product_image mpi ON p.product_id = mpi.product_id
        LEFT JOIN
    image i ON i.image_id = mpi.image_id
WHERE
    $where_id
    ");
     return $res -> fetch();
    }

$title = $prod_cart['heading'];
$price = $prod_cart['price'];
$link = $prod_cart['main_img'];
var_dump($title);
var_dump($price);
var_dump($link);
$user_id =$_SESSION['user']['id']; 
var_dump($user_id);

if (!empty($_SESSION['user'])){
    global $pdo;
    $pdo->query( "INSERT INTO `cart` (`id`, `user_id`, `heading`, `img`, `price`, `count`) VALUES (NULL, '$user_id', '$title', '$link', '$price', '$count')");
    header('Location: ' .$back);
}else{
    echo "<script>alert('Это сработал alert в php')</script>";
    
    
}
