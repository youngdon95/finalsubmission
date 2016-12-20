<?php
   session_start();
    #Connect to the database
    $host = "127.0.0.1";
    $user = "champion_boy";                     //Your Cloud 9 username
    $pass = "";                                  //Remember, there is NO password by default!
    $db = "TRNAPPLICATION";                                  //Your database name you want to connect to
    $port = 3306;      
    $database2 = "IRD";//The port #. It is always 3306
    
     $link2 = mysqli_connect($host, $user, $pass, $database2, $port)or die(mysql_error());
   if($_SERVER["REQUEST_METHOD"] == "POST") {
      // username and password sent from form 
      
      $myusername = mysqli_real_escape_string($link2,$_POST['username']);
      $mypassword = mysqli_real_escape_string($link2,$_POST['password']); 
      
      $sql = "SELECT id FROM users WHERE username = '$myusername' and password = '$mypassword'";
       $sq = "SELECT id FROM ApUsers WHERE email = '$myusername' and password = '$mypassword'";
      $result = mysqli_query($link2,$sql) ;
      $result2 = mysqli_query($link2,$sq) ;
      
      $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
      $row2 = mysqli_fetch_array($result2,MYSQLI_ASSOC);
      
      $active = $row['active'];
      $active2 = $row2['active2'];
      
      $count = mysqli_num_rows($result);
      $count2 = mysqli_num_rows($result2);
      if(($result = mysqli_query($link2, $sql)) || ($result2 = mysqli_query($link2, $sq))){
    if(mysqli_num_rows($result) == 1){
      // If result matched $myusername and $mypassword, table row must be 1 row
		
         #session_register("myusername");
         $_SESSION['login_user'] = $myusername;
         
         header("location: https://registration-system-champion-boy.c9users.io/education-time/index.html");
      }else if(mysqli_num_rows($result2) == 1)
       {
           // If result matched $myusername and $mypassword, table row must be 1 row
		
         #session_register("myusername");
         $_SESSION['login_user'] = $myusername;
         
         header("location: https://registration-system-champion-boy.c9users.io/education-time/index.html");
      }else{
         $error = "Your Login Name or Password is invalid";
      }
   }
   }
   if($_SERVER["REQUEST_METHOD"] == "POST") {
   $myusername = mysqli_real_escape_string($link2,$_POST['username']);
   $mypassword = mysqli_real_escape_string($link2,$_POST['password']); 
   
   if (($myusername==="620078849" and $mypassword=="school") || ($myusername==="620062549" && $mypassword=="odaine")){
     header("location: https://registration-system-champion-boy.c9users.io/education-time/index.html");
   }else{
         $error = "Your Login Name or Password is invalid";
      }
   }
   
?>


<html>
   
   <head>
      <title>Login Page</title>
      
      <style>
@import url(http://fonts.googleapis.com/css?family=Vibur);
* {
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  font-family: arial;
}

body {
  
}

h1 {
  color: #fff;
  text-align: center;
  font-family: 'Vibur', cursive;
  font-size: 50px;
}

h2 {
  color: #fff;
  text-align: center;
  font-family: 'Vibur', cursive;
  font-size: 35px;
}

.logo{align:center; width:180px;}

.leftlog{width: 390px;
  padding: 40px 30px;
  background: #52769b;
  -moz-border-radius: 4px;
  -webkit-border-radius: 4px;
  border-radius: 0px;
  height:427px;
  float:left;
  position: absolute;
  left:19.6%;
  top: 50%;
  -moz-transform: translateY(-50%);
  -ms-transform: translateY(-50%);
  -webkit-transform: translateY(-50%);
  transform: translateY(-50%);}
  
.login-form {
  width: 900px;
  padding: 40px 30px;
  background: #52769b;
  -moz-border-radius: 4px;
  -webkit-border-radius: 4px;
  border-radius: 0px;
  float:left;
  position: absolute;
  left:23%;
  top: 50%;
  -moz-transform: translateY(-50%);
  -ms-transform: translateY(-50%);
  -webkit-transform: translateY(-50%);
  transform: translateY(-50%);
}

.form-group {
  position: relative;
  margin-bottom: 15px;
}

.form-control {
  width: 100%;
  height: 50px;
  border: none;
  padding: 5px 7px 5px 15px;
  background: #fff;
  color: #666;
  border: 2px solid #ddd;
  -moz-border-radius: 4px;
  -webkit-border-radius: 4px;
  border-radius: 4px;
}
.form-control:focus, .form-control:focus + .fa {
  border-color: #10CE88;
  color: #10CE88;
}

.form-group .fa {
  position: absolute;
  right: 15px;
  top: 17px;
  color: #999;
}

.log-status.wrong-entry {
  -moz-animation: wrong-log 0.3s;
  -webkit-animation: wrong-log 0.3s;
  animation: wrong-log 0.3s;
}

.log-status.wrong-entry .form-control, .wrong-entry .form-control + .fa {
  border-color: #ed1c24;
  color: #ed1c24;
}

.log-btn {
  background: #0AC986;
  dispaly: inline-block;
  width: 100%;
  font-size: 16px;
  height: 50px;
  color: #fff;
  text-decoration: none;
  border: none;
  -moz-border-radius: 4px;
  -webkit-border-radius: 4px;
  border-radius: 4px;
}

.link {
  text-decoration: none;
  color: #C6C6C6;
  float: right;
  font-size: 12px;
  margin-bottom: 15px;
}
.link:hover {
  text-decoration: underline;
  color: #8C918F;
}

.alert {
  display: none;
  font-size: 12px;
  color: #f00;
  float: left;
}

@-moz-keyframes wrong-log {
  0%, 100% {
    left: 0px;
  }
  20% , 60% {
    left: 15px;
  }
  40% , 80% {
    left: -15px;
  }
}
@-webkit-keyframes wrong-log {
  0%, 100% {
    left: 0px;
  }
  20% , 60% {
    left: 15px;
  }
  40% , 80% {
    left: -15px;
  }
}
@keyframes wrong-log {
  0%, 100% {
    left: 0px;
  }
  20% , 60% {
    left: 15px;
  }
  40% , 80% {
    left: -15px;
  }
}

</style>

   </head>
   
   <body bgcolor = "#e3f6fc">
	
      <div align = "center" style = "color:white; padding:10px;">

				
            <div style = "margin:30px">
               
               <form action = "login.php" method = "post">
                   
                  <div class="login-form">
                      <div style="border:0px solid black; float:left;width:350px;height:345px">
                          <h2>WOLMERS BOYS SCHOOL</h2>
                          <img src="wolmers512.png" width="180px"/>
                      </div>
                    <div style="border:0px solid black;float:right;width:450px">
                     <h1>Login</h1>
                 <div class="form-group ">
                   <input type="text" class="form-control" placeholder="Username " id="UserName" name="username">
                   <i class="fa fa-user"></i>
                 </div>
                 <div class="form-group log-status">
                   <input type="password" class="form-control" placeholder="Password" id="Passwod" name="password">
                   <i class="fa fa-lock"></i>
                 </div>
                  <span class="alert">Invalid Credentials</span>
                  <a class="link" href="#">Lost your password?</a>
                 <button type="submit" class="log-btn" value="Login" >Log in</button>
                 <div style = "font-size:14px; color:red; margin-top:10px;background-color:white"><?php echo $error; ?></div>
                    </div>
    
               </div>
               </form>
                 
               
               
					
            </div>
				
         </div>
			
      </div>
      

   </body>
</html>