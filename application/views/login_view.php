<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>ExpressVU Login</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
      <link rel="stylesheet" type="text/css" href="<?php echo base_url();?>/css/style.css">
      <link rel="stylesheet" type="text/css" href="<?php echo base_url();?>/css/reset.css">
<link href='https://fonts.googleapis.com/css?family=Roboto:400,500' rel='stylesheet' type='text/css'>
    
    
    
  </head>

  <body>

    <div class="login-container">
  <section class="login" id="login">
    <header>
      <h2>ExpressVU Tracker</h2>
      <h4>Login</h4>
    </header>
   <?php echo validation_errors(); ?>
   <?php echo form_open('index.php/verifylogin'); ?>

      <input type="text" class="login-input" placeholder="User" name="username" required autofocus/>
      <input type="password" class="login-input" placeholder="Password" name="password" required/>
      <div class="submit-container">
        <button type="submit" class="login-button">SIGN IN</button>
      </div>
    </form>
  </section>
</div>  
        <script type="text/javascript" src="<?php echo base_url();?>/js/index.js"></script>

    
    
    
  </body>
</html>
