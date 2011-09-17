<?php

class sql {

  public function __construct() {
    $this->connect_db();
  }

  public function connect_db() {
    $link = mysql_connect(':/Applications/MAMP/tmp/mysql/mysql.sock', 'root', 'root') or die(mysql_error());
    mysql_select_db('deals') or die(mysql_error());
  }

  public function check_deal($id) {
    $q = "SELECT `deal_id` FROM `dealsinfo` WHERE `deal_id` = '" . $id . "'";
    $r = $this->get_sql_results($q);

    if (mysql_num_rows($r) > 0) {
      return true;
    }
  }

  public function insert_deal_info($data) {
    date_default_timezone_set('America/Los_Angeles');
    $insert_time = date("Y-m-d:H-i-s");
    $update_time = date("Y-m-d:H-i-s");
    $q = "INSERT INTO `dealsinfo` (`deal_id`, `title`, `date_added`, `end_date`, `active`, `discount`, `price`, `value`, `purchased`, `left`, `insert_date`, `update_date`) VALUES ('" . $data['deal_id'] . "', '" . mysql_escape_string($data['title']) . "', '" . $data['date_added'] . "', '" . $data['end_date'] . "', '" . $data['active'] . "', '" . $data['discount'] . "', '" . $data['price'] . "', '" . $data['value'] . "', '" . $data['purchased'] . "', '" . $data['left'] . "', '" . $insert_time . "', '" . $update_time . "')";
    $this->get_sql_results($q);
  }

  public function insert_url_info($data) {
    if (array_key_exists('deal_id', $data)) {
      $q = "INSERT INTO `urlinfo` (`deal_id`, `source_url`, `deal_url`, `original_source_url`) VALUES ('" . $data['deal_id'] . "', '" . mysql_escape_string($data['source_url']) . "', '" . mysql_escape_string($data['deal_url']) . "', '" . mysql_escape_string($data['original_source_url']) . "')";
      $this->get_sql_results($q);
    }
  }

  public function insert_tags($data) {
    foreach ($data as $d) {
      if (array_key_exists('deal_id', $d)) {
        $q = "INSERT INTO `tags` (`deal_id`, `tag`) VALUES ('" . $d['deal_id'] . "', '" . mysql_escape_string($d['tag']) . "')";
        $this->get_sql_results($q);
      }
    }
  }

  public function insert_division($data) {
    if (array_key_exists('deal_id', $data)) {
      $q = "INSERT INTO `division` (`deal_id`, `city`, `lat`, `long`) VALUES ('" . $data['deal_id'] . "', '" . mysql_escape_string($data['city']) . "', '" . $data['lat'] . "', '" . $data['long'] . "')";
      $this->get_sql_results($q);
    }
  }

  public function insert_business($data) {
    foreach ($data as $d) {
      if (array_key_exists('deal_id', $d)) {
        $q = "INSERT INTO `business` (`deal_id`, `name`, `url`, `address`, `city`, `state`, `zip`, `phone`, `lat`, `long`) VALUES ('" . $d['deal_id'] . "', '" . mysql_escape_string($d['name']) . "', '" . mysql_escape_string($d['url']) . "', '" . mysql_escape_string($d['address']) . "', '" . mysql_escape_string($d['city']) . "', '" . mysql_escape_string($d['state']) . "', '" . $d['zip'] . "', '" . $d['phone'] . "', '" . $d['lat'] . "', '" . $d['long'] . "')";
        $this->get_sql_results($q);
      }
    }
  }

  public function insert_source($data) {
    if (array_key_exists('deal_id', $data)) {
      $q = "INSERT INTO `source` (`deal_id`, `name`) VALUES ('" . $data['deal_id'] . "', '" . mysql_escape_string($data['name']) . "')";
      $this->get_sql_results($q);
    }
  }

  public function insert_images($data) {
    if (array_key_exists('deal_id', $data)) {
      $q = "INSERT INTO `images` (`deal_id`, `image_big`, `image_small`) VALUES ('" . $data['deal_id'] . "', '" . mysql_escape_string($data['image_big']) . "', '" . mysql_escape_string($data['image_small']) . "')";
      $this->get_sql_results($q);
    }
  }

  public function update_deal_info($data) {
    $update_time = date("Y-m-d:H-i-s");
    $q = "UPDATE `dealsinfo` SET `title` = '" . mysql_escape_string($data['title']) . "', `end_date` = '" . $data['end_date'] . "', `active` = '" . $data['active'] . "', `discount` = '" . $data['discount'] . "', `price` = '" . $data['price'] . "', `value` = '" . $data['value'] . "', `purchased` = '" . $data['purchased'] . "', `left` = '" . $data['left'] . "', `update_date` = '" . $update_time . "' WHERE `deal_id` = '" . $data['deal_id'] . "'";
    $this->get_sql_results($q);
  }

  public function update_url_info($data) {
    if (array_key_exists('deal_id', $data)) {
      $q = "UPDATE `urlinfo` SET `source_url` = '" . mysql_escape_string($data['source_url']) . "', `deal_url` = '" . mysql_escape_string($data['deal_url']) . "', `original_source_url` =  '" . mysql_escape_string($data['original_source_url']) . "' WHERE `deal_id` = '" . $data['deal_id'] . "'";
      $this->get_sql_results($q);
    }
  }

  public function update_tags($data) {
    $q = "DELETE FROM `tags` WHERE `deal_id` = " . $data[0]['deal_id'];
    $this->get_sql_results($q);
    $this->insert_tags($data);

    /* foreach($data as $d){
      if(array_key_exists('deal_id', $d)){
      $q = "UPDATE `tags` SET `tag` = '".mysql_escape_string($d['tag'])."' WHERE `deal_id` = '".$d['deal_id']."'";
      $this->get_sql_results($q);
      }
      } */
  }

  public function update_division($data) {
    if (array_key_exists('deal_id', $data)) {
      $q = "UPDATE `division` SET `city` = '" . mysql_escape_string($data['city']) . "', `lat` = '" . $data['lat'] . "', `long` = '" . $data['long'] . "' WHERE `deal_id` = '" . $data['deal_id'] . "'";
      $this->get_sql_results($q);
    }
  }

  public function update_business($data) {
    $q = "DELETE FROM `business` WHERE `deal_id` = " . $data[0]['deal_id'];
    $this->get_sql_results($q);
    $this->insert_business($data);
    /* foreach($data as $d){
      if(array_key_exists('deal_id', $d)){
      $q = "UPDATE `business` SET `name` = '".mysql_escape_string($d['name'])."', `url` = '".mysql_escape_string($d['url'])."', `address` = '".mysql_escape_string($d['address'])."', `city` = '".mysql_escape_string($d['city'])."', `state` = '".mysql_escape_string($d['state'])."', `zip` = '".$d['zip']."', `phone` = '".$d['phone']."' WHERE `deal_id` = '".$d['deal_id']."'";
      $this->get_sql_results($q);
      }
      } */
  }

  public function update_source($data) {
    if (array_key_exists('deal_id', $data)) {
      $q = "UPDATE `source` SET `name` = '" . mysql_escape_string($data['name']) . "' WHERE `deal_id` = '" . $data['deal_id'] . "'";
      $this->get_sql_results($q);
    }
  }

  public function update_images($data) {
    if (array_key_exists('deal_id', $data)) {
      $q = "UPDATE `images` SET `image_big` = '" . mysql_escape_string($data['image_big']) . "', `image_small` = '" . mysql_escape_string($data['image_small']) . "' WHERE `deal_id` = '" . $data['deal_id'] . "'";
      $this->get_sql_results($q);
    }
  }

  public function update_inactive_record($city) {
    $q = "SELECT dealsinfo.deal_id " .
            "FROM dealsinfo " .
            "LEFT JOIN division ON ( dealsinfo.deal_id = division.deal_id ) " .
            "WHERE division.city = '" . $city . "' " .
            "AND dealsinfo.active = '1' " .
            "AND update_date < SUBTIME( " .
            "CURRENT_TIMESTAMP , '0 0:30:0' )";

    $r = $this->get_sql_results($q);

    while ($row = mysql_fetch_object($r)) {
      $q1 = "UPDATE `dealsinfo` SET `active` = '0' WHERE `deal_id` = '" . $row->deal_id . "'";
      $this->get_sql_results($q1);
      echo $row->deal_id . " is inactivated\n";
    }
  }

  private function get_sql_results($query) {
    $result = mysql_query($query);
    if (mysql_errno()) {
      $error = mysql_errno() . ": " . mysql_error();
      echo "\n\n\n" . $query . " :: " . $error . "\n";
      die;
    } else {
      return $result;
    }
  }

}

?>