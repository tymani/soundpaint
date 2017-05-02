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
        <li><a href="/">Home</a></li>
        <li><a href="/workspace">Workspace</a></li>
        <li class="active"><a href="/projects">Projects</a></li>
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

<h1><span>Personal Projects - USER</span></h1>
<h1><span>Currently Under Construction, Please Come Back Soon!</span></h1>

<!-- <ul id="projects">
</ul>
 -->
</#assign>
<#include "main.ftl">