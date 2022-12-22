<?php
    session_start();
    require_once 'connect.php';
    if(!empty($_SESSION['user']['id'])){
    $id =$_SESSION['user']['id']; 
    
    
    function get_cart_upload($id): array{      //получение информации о товаре(название, цены, описание)
        global $pdo;    
        $where_id = " user_id = $id ";
        $res = $pdo -> query("SELECT id, heading, img, price, count , price * count as 'total'
        from cart
        where $where_id
        ");
         return $res -> fetchAll();
        }}

        if (isset($_GET['del'])) {
            $id = $_GET['del'];
            $pdo -> query("UPDATE `cart` SET  `user_id`=null,`heading`=null,`img`=null,`price`=null,`count`=null  WHERE `id` = $id");
            header('location: ../cart.php');
        }
?>