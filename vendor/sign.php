<?php
 session_start();
 require_once 'connect.php';
 require_once 'funcs.php';
 $back = $_SERVER['HTTP_REFERER'];
 $email = $_POST['email'];
 $password = md5($_POST['password']);

 $chek_user = $pdo->query( "SELECT * FROM `user` WHERE `email` = '$email' AND `password` = '$password'");
 
 $num_rows = $chek_user->rowCount();
 
 if($num_rows>0){
    $user =$chek_user->fetchAll();
    $_SESSION['user_id'] = $user['id'];
    $user_id = $_SESSION['user_id'];
    echo $user_id;
    $_SESSION['user'] =[
        "id" => $user[0]['id'],
        "name"=> $user[0]['name'],
        "email" => $user[0]['email']
    ];
    header('Location: ../index.php');
    

 }else {
    $_SESSION['message'] = 'Неверный логин или пароль!';
    header('Location: ../signin.php');
 }

?>


