<?php
// ini_set('display_errors', 'On');

require_once dirname(__FILE__) . "/db.class.php";

    $host = "localhost";
    $port = "8889";
    $dbname = "wedding";
    $dbuser = "wedding_user";
    $dbpass = "wedding_pass";
    $dsl = "mysql:host={$host};port={$port};dbname={$dbname}";
    $db = new db($dsl, $dbuser, $dbpass);

$i = isset($_GET['index']) && is_string($_GET['index']) ? intval($_GET['index']) : 0;

$sql = "SELECT * FROM images WHERE id = :id LIMIT 1;";
$result = $db->select($sql, array(
  array(":id", $i, PDO::PARAM_INT)
));

if(empty($result)){
  echo json_encode(array(
    "status" => 0,
    "message" => "index({$i}) is not found!"
  ));
}else{
  echo json_encode(array(
    "status" => 1,
    "data" => $result[0]
  ));
}