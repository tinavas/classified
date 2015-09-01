<?php

/* @var $this yii\web\View */

$this->title = 'My Yii Application';
?>
<main>

  <!-- header-search-main -->
  <section class="container">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 header-search-main">
      <form class="navbar-form" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Location">
          <input type="text" class="form-control search-box" placeholder="Search">
          <button type="submit" class="btn-hdr-search"><i class="fa fa-search"></i>Search</button>
        </div>
      </form>
    </div>
  </section>
  <!-- /header-search-main -->


  <section class="col-lg-12 col-md-12 col-sm-12 col-xs-12 hm-wrap">
    <div class="container">
      <div class="col-lg-7 col-md-7 col-sm-7 col-xs-12 cat-wrap">
        <ul>
          <li><a href=""><i class="fa fa-globe"></i>Property</a></li>
          <li><a href=""><i class="fa fa-industry"></i> Industry</a></li>
          <li><a href=""><i class="fa fa-car"></i> Vehicle</a></li>
          <li><a href=""><i class="fa fa-motorcycle"></i> Motorcycle</a></li>
        </ul>
        <ul>  
          <li><a href=""><i class="fa fa-ship"></i> Boat</a></li>
          <li><a href=""><i class="fa fa-briefcase"></i> Jobs</a></li>
          <li><a href=""><i class="fa fa-cutlery"></i> Restaurents</a></li>
          <li><a href=""><i class="fa fa-plane"></i> Travel</a></li>
        </ul>
        <ul>
          <li><a href=""><i class="fa fa-graduation-cap"></i> Education</a></li>
          <li><a href=""><i class="fa fa-sitemap"></i> Directory</a></li>
          <li><a href=""><i class="fa fa-shopping-cart"></i> Shop</a></li>
          <li><a href=""><i class="fa fa-building-o"></i> Mall</a></li>
        </ul>
        <ul>
          <li><a href=""><i class="fa fa-beer"></i> Samfunn</a></li>
          <li><a href="<?php echo Yii::getAlias('@web') ?>/design/../icon/cubes"><i class="fa fa-cubes"></i> For Sale</a></li>
          <li><a href="<?php echo Yii::getAlias('@web') ?>/design/../icon/cubes"><i class="fa fa-cubes"></i> Offering</a></li>
          <li><a href="<?php echo Yii::getAlias('@web') ?>/design/../icon/cubes"><i class="fa fa-money"></i> Bid/Auction</a></li>
        </ul>
      </div><!-- /cat-wrap-->
      <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12 hm-col-right">
        <div class="submit-ad-box">
          <h3>Sell Your Item On Our Website</h3>
          <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</P>
            <a class="btn-submit-ad" href="#">Submit an Ad</a>
          <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</P>
        </div>
      </div>

    </div>
</div>
