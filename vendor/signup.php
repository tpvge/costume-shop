<?php 
    session_start();
    require_once 'connect.php';
    $name = $_POST['name'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $password_confirm = $_POST['re_password'];

    if ($password === $password_confirm){
        $password=md5($password);
        global $pdo;
        $pdo->query( "INSERT INTO `user` (`id`, `name`, `email`, `password`) VALUES (NULL, '$name', '$email', '$password')");
        $_SESSION['message'] = 'Регистрация прошла успешно!';
        header('Location: ../signin.php');
    }else{
        $_SESSION['message'] = 'Пароли не совпадают';
        header('Location: ../registr.php');
    }

?>