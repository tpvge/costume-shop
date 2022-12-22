<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up Form by Colorlib</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css\st.css">
</head>
<body>

    <div class="main">
        <section class="signup">
            <!-- <img src="images/signup-bg.jpg" alt=""> -->
            <div class="container">
                <div class="signup-content">
                    <form method="POST" id="signup-form" action="vendor/signup.php" class="signup-form">
                        <h2 class="form-title">Создание аккаунта</h2>
                        <div class="form-group">
                            <input type="text" class="form-input" name="name" id="name" placeholder="Ваше имя"/>
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-input" name="email" id="email" placeholder="Email"/>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-input" name="password" id="password" placeholder="Пароль"/>
                            <span toggle="#password" class="zmdi zmdi-eye field-icon toggle-password"></span>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-input" name="re_password" id="re_password" placeholder="Подтверждение пароля"/>
                        </div>
                        <div class="form-group">
                            <input type="submit" name="submit" id="submit" class="form-submit" value="Зарегестрироваться"/>
                        </div>
                       
                        <?php
					        if (isset($_SESSION['message'])):
				        ?>
				<p class="msg mb-4 text-center" style="font-weight: bold; text-align:center;">
					 <?php 
                     echo $_SESSION['message'];
                     unset($_SESSION['message']);
                     ?>
				</p>
				<?php endif; ?>
			
                    </form>
                    <p class="loginhere">
                        У вас уже есть аккаунт? <a href="/signin.php" class="loginhere-link">Войдите!</a>
                    </p>
                </div>
            </div>
        </section>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>