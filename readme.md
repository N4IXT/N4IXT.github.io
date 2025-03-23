# N4IXT’s Radio Extravaganza

<html>
<head>
  <style>
    body {
      display: flex;
      flex-direction: column;
    }
    .header {
      width: 100%;
      text-align: center;
      margin-bottom: 20px;
    }
    .main {
      display: flex;
      width: 100%;
    }
    .menu {
      width: 20%;
      padding: 10px;
      background-color: #f4f4f4;
    }
    .content {
      width: 80%;
      padding: 10px;
    }
  </style>
</head>
<body>
  <div class="header">
    <a href="./room.jpg" target="_blank">
      <img src="./room.jpg" style="max-width: 640px;" alt="N4IXTs Wall of Radios">
    </a>
  </div>
  <div class="main">
    <div class="menu">
      <h2>Menu</h2>
    <div id="menu-content"></div>
    </div>
    <div class="content">
    <h2>Hello</h2>
    <p>
Hi, I'm Robert, N4IXT. I'm a ham radio operator, and very interested in the history of radio, both amateur and broadcast.

As you can see, I have a large collection of antique radios. The majority are Hallicrafters, in addition I have some early RCA and Atwater Kent, plus a few other miscellaneous radios.

I also have a rather large collection of vintage books related to radio. Some historical and many, many technical.

Right now I have at least one of every issue of the ARRL Handbook, going back to the very first one from 1926. I have all of the "West Coast" handbooks, almost all the QSTs, and many other magazines.

On this site I hope to document all of the radios in my collection. In part as I want to share with other collectors, but additionally it's gotten to where I need a good way to keep track of what I have.
      </p>
    </div>
  </div>
  <script>
    document.addEventListener('DOMContentLoaded', function() {
      fetch('menu.html')
        .then(response => response.text())
        .then(data => {
          document.getElementById('menu-content').innerHTML = data;
        });
    });
  </script>
</body>
</html>
