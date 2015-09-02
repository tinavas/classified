<main>

   <section class="col-lg-12 col-md-12 col-sm-12 col-xs-12 login-wrap">
    <div class="container">

      <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2">
         <div class="panel panel-info" >
            <div class="panel-heading">
               <div class="panel-title">Log In</div>
            </div>
            <div class="panel-body" >
               <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
               <form id="loginform" class="form-horizontal" role="form">
                  <div class="input-group custom-field-wrap">
                     <label for="userEmail">Your Email</label>
                     <input id="login-username" type="text" class="form-control" name="username" value="" placeholder="">
                  </div>
                  <div class="input-group custom-field-wrap">
                     <label for="userPassword">Password</label>
                     <input id="login-password" type="password" class="form-control" name="password" placeholder="">
                  </div>
                  <div class="input-group checkbox-main">
                     <div class="checkbox">
                        <label><input id="login-remember" type="checkbox" name="remember" value="1"> Remember me</label>
                     </div>
                  </div>
                  
                  <div class="form-group login-button-box">
                    <span>
                      <a id="btn-fblogin" href="#" class="btn btn-login">Log In</a>
                    </span>
                  </div>

                    <div class="login-button-btm">
                      <span>
                        <a href="#">Forgot password?</a>
                        <a href="#">New user? Register here</a>
                      </span>
                    </div>
               </form>
            </div>

            <div class="login-btm-box">
              Already posted an Ad before? &nbsp<a href="#" id="" class="">Manage your Ad through email</a>
            </div>

            <div class="login-btm-box2">
              <span>Log in using your Facebook account</span>
              <a href="#" id="" class="btn-login-fb"></a>
            </div>            
         </div>
            <div class="tos-box">
              By logging in, you accept our <a href="#">Terms of Use</a>
            </div>    
      </div>

    </div><!-- /container-->
  </section><!-- /login-wrap -->

<!-- Ads Boxes -->
  <div class="ads-vr-left"><img class="img-responsive" src="<?php echo Yii::getAlias('@web') ?>/design/template/img/ads-bnr-vr.jpg"></div>
  <div class="ads-vr-right"><img class="img-responsive" src="<?php echo Yii::getAlias('@web') ?>/design/template/img/ads-bnr-vr.jpg"></div>
<!-- /Ads Boxes -->
</main>