<#assign content>
<#assign log=logged/>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="/">
        <img src="images/panda_before.jpg" style="height: 27px">
      </a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="/">Home</a></li>
        <li><a href="/workspace">Workspace</a></li>
        <li><a href="/projects">Projects</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <#if log=="true">
          <li><a>${name}</a></li>
          <li><a href="/logout">Logout</a></li> 
        <#else>
          <li><a href="/login">Login</a></li>
          <li><a href="/register">Register</a></li>
        </#if>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<h1><span>Home/NewsFeed - Welcome to soundpaint</span></h1>

<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner" role="listbox">
    <div class="carousel-item item active">
      <img class="d-block img-fluid" src="images/panda_before.jpg" alt="First slide">
      <div class="carousel-caption d-none d-md-block">
            <h3>...</h3>
            <p>...</p>
          </div>
    </div>
    <div class="carousel-item item">
      <img class="d-block img-fluid" src="images/panda_before.jpg" alt="Second slide">
        <div class="carousel-caption d-none d-md-block">
            <h3>...</h3>
            <p>...</p>
          </div>
    </div>
    <div class="carousel-item item">
      <img class="d-block img-fluid" src="images/panda_before.jpg" alt="Third slide">
      <div class="carousel-caption d-none d-md-block">
            <h3>hi</h3>
            <p>hello</p>
      </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

</#assign>
<#include "main.ftl">