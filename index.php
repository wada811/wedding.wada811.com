<?php
// error_reporting(E_ALL);
// ini_set('display_errors', 'On');

require_once dirname(__FILE__) . "/db.class.php";

if(isset($_FILES['img'])){
  if($_FILES['img']['error'] !== 0){
    // error
    if($_FILES['img']['error'] == 4){
      $error = "画像をアップロードして下さい♥";
    }else{
      $error = "画像が大きすぎるかもしれません";
    }
  }else{
    // success
    $baseUrl = "http://wedding.wada811.com/";
    $imageDir = "images/uploads/";
    $fileName = sha1_file($_FILES['img']['tmp_name']) . mb_substr($_FILES['img']['name'], strrpos($_FILES['img']['name'], "."));
    $uploadDir = dirname(__FILE__) . "/" . $imageDir;
    $uploadFile = $uploadDir . $fileName;

    if(move_uploaded_file($_FILES['img']['tmp_name'], $uploadFile)){
      $imageUrl = $baseUrl . $imageDir . $fileName;

      $host = "localhost";
      $port = "8889";
      $dbname = "wedding";
      $dbuser = "wedding_user";
      $dbpass = "wedding_pass";
      $dsl = "mysql:host={$host};port={$port};dbname={$dbname}";
      $db = new db($dsl, $dbuser, $dbpass);
      $sql = "INSERT INTO images (url, comment, created_at, updated_at) VALUES (:url, :comment, NOW(), NOW());";
      $db->insert($sql, array(
        array(":url", $imageUrl, PDO::PARAM_STR),
        array(":comment", $_POST["comment"], PDO::PARAM_STR)
      ));
      $thanksUrl = $baseUrl . "thanks.php";
      header("location: " . $thanksUrl);
      exit;
    }else{
      $error = "画像のアップロードに失敗しました";
    }
  }
}
?>
<html>
<head>
</head>
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
    .error {
      color: pink;
      text-shadow: 1px  1px 1px black,
                   1px -1px 1px black,
                  -1px -1px 1px black,
                  -1px  1px 1px black;
    }

.visuallyhidden {
    position: absolute;
    width: 1px;
    height: 1px;
    padding: 0;
    margin: -1px;
    border: 0;
    clip: rect(0 0 0 0);
    overflow: hidden;
}
    .cheki {
      padding: 16px;
      background-color: white;
      box-shadow: 1px 1px 8px 0px;
    }

    .cheki__image {
      display: block;
      min-width: 480px;
      min-height: 480px;
      max-width: 640px;
      max-height: 640px;
      background-color: black;
      border: none;
    }
    .cheki__comment {
      width: 100%;
      height: 48px;
    }

    .form__submit {
      margin: 16px;
      font-size: 18px;
      background-color: white;
    }
  </style>
  <div class="center">
    <pre class="placeholder center__element">2014.11.22
Happy Wedding
Takumi &amp; Risa</pre>
  </div>
  <div class="center">
    <div class="form">
      <form action="" method="post" enctype="multipart/form-data">
        <div class="cheki center__element">
          <input type="file" name="img" accept="image/*" id="jsFileInput" class="visuallyhidden">
          <label for="jsFileInput">
            <img id="jsPreviewImage" class="cheki__image" src="./images/upload.png">
          </label>
          <?php if(!empty($error)){ echo "<p class=\"error\">{$error}</p>"; } ?>
          <p>コメント</p>
          <textarea name="comment" class="cheki__comment" maxlength="40"></textarea>
        </div>
        <input type="image" src="./images/send.png" class="form__submit" value="送信">
      </form>
    </div>
  </div>
  <script src="./javascripts/jquery-2.1.1.min.js"></script>
  <script src="./javascripts/exif.js"></script>
  <script src="./javascripts/megapix-image.js"></script>
  <script>
    $(function(){
      var jsPreviewImage = $("#jsPreviewImage");
      var jsFileInput = $('#jsFileInput');
      jsFileInput.on("change",function(){
        var file = jsFileInput.prop("files")[0];
        EXIF.getData(file, function(){
          var orientation = file.exifdata.Orientation;
          var mpImg = new MegaPixImage(file);
          mpImg.render(jsPreviewImage[0], { quality: 0.8, orientation: orientation });
        });
      });
    });
  </script>
</body>
</html>