<?php
?>
<html>
<head>
<head>
<body>
  <style>
    body {
      background-color: pink;
    }

    .center {
      display: table;
      text-align: center;
      margin: 0 auto;
    }
    .center__element {
      display: table-cell;
      text-align: center;
      vertical-align: middle;
    }

    .placeholder {
      color: #64e9f0; /* #00CCFF; */
      font-weight: bold;
      font-size: 64px;
      font-family: 'Apple Chancery';
      text-shadow: 4px 4px 8px black;
    }

    .cheki__template {
      display: none;
    }

    .cheki {
      position: absolute;
      padding: 16px;
      background-color: white;
      box-shadow: 1px 1px 8px 0px;
    }

    .cheki__image {
      max-width: 480px;
      max-height: 480px;
      background-color: black;
    }
    .answer {
      width: 240px;
      margin: 0 auto;
      text-align: left;
    }
  </style>
  <div class="center">
    <pre class="placeholder">2014.11.22
Happy Wedding
Takumi &amp; Risa</pre>
    <?php if(empty($_POST['answer1']) || empty($_POST['answer3'])){ ?>
      <div>
        <form action="" method="post">
          <p>結婚式のじゃんけん大会での景品は何でしょう？</p>
          <div class="answer">
          <input type="checkbox" name="answer1" id="answer1">
          <label for="answer1">1. 神戸牛</label>
          </div>
          <div class="answer">
          <input type="checkbox" name="answer2" id="answer2">
          <label for="answer2">2. iPhone6</label>
          </div>
          <div class="answer">
          <input type="checkbox" name="answer3" id="answer3">
          <label for="answer3">3. ディズニーペアチケット</label>
          </div>
          <div class="answer">
          <input type="checkbox" name="answer4" id="answer4">
          <label for="answer4">4. ボジョレー・ヌーボー</label>
          </div>
          <input type="submit">
        </form>
      </div>
    <?php } ?>
  </div>
  <div class="cheki__template">
    <div class="cheki center__element">
      <img class="cheki__image">
      <p class="cheki__comment"></p>
    </div>
  </div>
  <script src="../javascripts/jquery-2.1.1.min.js"></script>
  <script src="../javascripts/exif.js"></script>
  <script src="../javascripts/megapix-image.js"></script>
  <script src="../javascripts/jquery.transform.js"></script>
  <?php if(!empty($_POST['answer1']) && !empty($_POST['answer3'])){ ?>
  <script>
    setInterval(load(), 5000);

    function load(){
      var i = 1;
      return function(){
        console.log("i: " + i);
        $.getJSON("../load.php", { index: i }, function(result){
          console.log("result: " + result);
          if(result.status == 1){
            i++;
            show(result.data);
          }
        });
      };
    }

    function show(data){
      console.log("show: " + JSON.stringify(data));
      var $template = $(".cheki__template").clone();
      var top1 = Math.floor( Math.random() * 100 ) + "px";
      var left1 = Math.floor( Math.random() * 600 ) + "px";
      var rotate1 = (Math.floor( Math.random() * 40) - 20);
      var top2 = Math.floor( Math.random() * 100 ) + "px";
      var left2 = Math.floor( Math.random() * 700 ) + "px";
      var rotate2 = (Math.floor( Math.random() * 40) - 20);
      var $cheki = $template.find(".cheki");
      $template.find(".cheki__image").attr("data-src", data.url);
      $template.find(".cheki__comment").text(data.comment);
      var image = new Image();
      image.onload = function(){
        EXIF.getData(image, function(){
          var orientation = EXIF.getTag(image, "Orientation");
          var mpImg = new MegaPixImage(image);
          mpImg.render($template.find(".cheki__image")[0], { quality: 0.8, orientation: orientation });
          $(".center").append($template.html());
          $(".center").children().last()
          .css({
            "top": top1,
            "left": left1,
            "opacity": "0",
            "rotate": rotate1 + "deg",
            "scale": "2, 2"
          })
          .animate({
            "top": top2,
            "left": left2,
            "opacity": "1",
            "rotate": rotate2 + "deg",
            "scale": "1, 1"
          }, 2000, 'swing');
        });
      }
      image.src = data.url;
    }
  </script>
  <?php } ?>
</body>
</html>