<?php

class db extends PDO {
  private $error;
  private $sql;
  private $bind;
  private $errorCallbackFunction;
  private $errorMsgFormat;

  public function __construct($dsn, $user="", $pass=""){
    $options = array(
      PDO::ATTR_PERSISTENT => true,
      PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
    );

    try {
      parent::__construct($dsn, $user, $pass, $options);
    } catch (PDOException $e) {
      $this->error = $e->getMessage();
    }
  }

  public function select($sql, $bind = array()){
    $this->sql = $sql;
    $this->bind = $bind;
    $this->error = "";

    try {
      $stmt = $this->prepare($this->sql);
      foreach($this->bind as $value){
        call_user_func_array(array($stmt, "bindValue"), $value);
      }
      if($stmt->execute()) {
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
      }
    } catch (PDOException $e) {
      $this->error = $e->getMessage();
      return false;
    }
  }

  public function insert($sql, $bind){
    $this->sql = $sql;
    $this->bind = $bind;
    $this->error = "";

    try {
      $stmt = $this->prepare($this->sql);
      foreach($this->bind as $value){
        call_user_func_array(array($stmt, "bindValue"), $value);
      }
      if($stmt->execute()) {
        return $stmt->rowCount();
      }
    } catch (PDOException $e) {
      $this->error = $e->getMessage();
      return false;
    }
  }

}