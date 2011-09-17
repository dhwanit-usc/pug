<?php

/**
 * Description of sqlhandler
 *
 * @author hardik
 */
class sqlhandler {
  
  public function __construct() {
    $this->connect_db();
    date_default_timezone_set('America/Los_Angeles');
  }
  
  private function connect_db() {
    $link=mysql_connect(':/Applications/MAMP/tmp/mysql/mysql.sock','root','root') or die(mysql_error());
    mysql_select_db('dealspug') or die(mysql_error());
  }
  
  
  public function check_deal($url) {
    $q = "SELECT `deal_id` FROM `deals` WHERE `deal_url` LIKE '" .  mysql_escape_string($url). "'";
    $r = $this->get_sql_results($q);

    if (mysql_num_rows($r) > 0) {
      while($row = mysql_fetch_object($r)) {
        $deal_id = $row->deal_id;
      }
      $this->set_deal_id($deal_id);
      return TRUE;
    }
    else {
      return FALSE;
    }
  }
  
  
  public function check_division($division_name) {
    $q = "SELECT `division_id` FROM `division` WHERE `division_name` LIKE '" .  mysql_escape_string($division_name). "'";
    $r = $this->get_sql_results($q);

    if (mysql_num_rows($r) > 0) {
      while($row = mysql_fetch_object($r)) {
        $division_id = $row->division_id;
      }
      $this->set_division_id($division_id);
      return TRUE;
    }
    else {
      return FALSE;
    }
  }
  
  public function check_source($source_name) {
    $q = "SELECT `source_id` FROM `source` WHERE `source_name` LIKE '" .  mysql_escape_string($source_name). "'";
    $r = $this->get_sql_results($q);

    if (mysql_num_rows($r) > 0) {
      while($row = mysql_fetch_object($r)) {
        $source_id = $row->source_id;
      }
      $this->set_source_id($source_id);
      return TRUE;
    }
    else {
      return FALSE;
    }
  }
  
  public function check_tags($tag_name) {
    $q = "SELECT `tag_id` FROM `tags` WHERE `tag_name` LIKE '" .  mysql_escape_string($tag_name). "'";
    $r = $this->get_sql_results($q);

    if (mysql_num_rows($r) > 0) {
      while($row = mysql_fetch_object($r)) {
        $tag_id = $row->tag_id;
      }
      $this->set_tag_id($tag_id);
      return TRUE;
    }
    else {
      return FALSE;
    }
  }
  
  public function check_business($lat, $lon) {
    $q = "SELECT `business_id` FROM `business` WHERE `lat` LIKE '".$lat."' AND `lon` LIKE '".$lon."'";
    $r = $this->get_sql_results($q);

    if (mysql_num_rows($r) > 0) {
      while($row = mysql_fetch_object($r)) {
        $business_id = $row->business_id;
      }
      $this->set_business_id($business_id);
      return TRUE;
    }
    else {
      return FALSE;
    }
  }
  
  public function insert_deal(array $data) {
    $division_id = $this->get_division_id();
    $source_id = $this->get_source_id();
    $q = "INSERT INTO `deals` (`deal_id`, `deal_full_title`, `deal_short_title`, `deal_url`, `status`, `image`, `start_date`, `end_date`, `discount_amount`, `original_price`, `discount`, `expiration_date`, `details`, `quantity_left`, `quantity_sold`, `source_id`) VALUES ('', '".mysql_escape_string($data['deal_full_title'])."', '".mysql_escape_string($data['deal_short_title'])."', '".mysql_escape_string($data['deal_url'])."', '".$data['status']."', '".$data['image']."', '".$data['start_date']."', '".$data['end_date']."', '".$data['discount_amount']."', '".$data['original_price']."', '".$data['discount']."', '".$data['expiration_date']."', '".mysql_escape_string($data['details'])."', '".$data['quantity_left']."', '".$data['quantity_sold']."', '".$source_id."')";
    $this->get_sql_results($q);
    //get deal_id by last executer query
    $deal_id = mysql_insert_id();
    $this->set_deal_id($deal_id);
    $this->deals_insert_info();
  }
  
  public function insert_business(array $data) {
    $q = "INSERT INTO `business` (`business_id`, `business_name`, `address1`, `address2`, `city`, `state`, `zipcode`, `website_url`, `lat`, `lon`) VALUES ('', '".mysql_escape_string($data['business_name'])."', '".mysql_escape_string($data['address1'])."', '".mysql_escape_string($data['address2'])."', '".mysql_escape_string($data['city'])."', '".$data['state']."', '".$data['zipcode']."', '".mysql_escape_string($data['website_url'])."', '".$data['lat']."', '".$data['lon']."')";
    $this->get_sql_results($q);
    //get business_id by last executer query
    $business_id = mysql_insert_id();
    $this->set_business_id($business_id);
  }

  public function insert_division(array $data) {
    $q = "INSERT INTO `division` (`division_id`, `division_name`, `lat`, `lon`) VALUES ('', '".mysql_escape_string($data['division_name'])."', '".$data['lat']."', '".$data['lon']."')";
    $this->get_sql_results($q);
    //get division_id by last executer query
    $division_id = mysql_insert_id();
    $this->set_division_id($division_id);
  }

  public function insert_source($source_name) {
    $q = "INSERT INTO `source` (`source_id`, `source_name`) VALUES ('', '".  mysql_escape_string($source_name)."')";
    $this->get_sql_results($q);
    //get source_id by last executer query
    $source_id = mysql_insert_id();
    $this->set_source_id($source_id);
  }

  public function insert_tags($tag_name) {
    $q = "INSERT INTO `tags` VALUES ('', '" . mysql_escape_string($tag_name) . "')";
    $this->get_sql_results($q);
    //get tag_id by last executer query
    $tag_id = mysql_insert_id();
    $this->set_tag_id($tag_id);
    
  }
  
  private function deals_insert_info() {
    $insert_time = date("Y-m-d:H-i-s");
    $update_time = date("Y-m-d:H-i-s");
    $deal_id = $this->get_deal_id();
    
    $q = "INSERT INTO `deals_insert_info` (`deal_id`, `insert_date`, `update_date`) VALUES ('".$deal_id."', '".$insert_time."', '".$update_time."')";
    $this->get_sql_results($q);
  }
  
  public function insert_deal_business() {
    $deal_id = $this->get_deal_id();
    $business_id = $this->get_business_id();
    $q = "INSERT INTO `deal_business` (`deal_id`, `business_id`) VALUES ('".$deal_id."', '".$business_id."')";
    $this->get_sql_results($q);
  }
  
  public function insert_deal_tag() {
    $deal_id = $this->get_deal_id();
    $tag_id = $this->get_tag_id();
    $q = "INSERT INTO `deal_tag` (`deal_id`, `tag_id`) VALUES ('".$deal_id."', '".$tag_id."')";
    $this->get_sql_results($q);
  }
  
  public function update_deal(array $data) {
    $deal_id = $this->get_deal_id();
    $q = "UPDATE `deals` SET `deal_full_title` = '".mysql_escape_string($data['deal_full_title'])."', `deal_short_title` = '".  mysql_escape_string($data['deal_short_title'])."', `image` = '".$data['image']."', `start_date` = '".$data['start_date']."', `end_date` = '".$data['end_date']."', `discount_amount` = '".$data['discount_amount']."', `original_price` = '".$data['original_price']."', `discount` = '".$data['discount']."', `expiration_date` = '".$data['expiration_date']."', `details` = '".  mysql_escape_string($data['details'])."', `quantity_left` = '".$data['quantity_left']."', `quantity_sold` = '".$data['quantity_sold']."' WHERE `deal_id` = '".$deal_id."'";
    $r = $this->get_sql_results($q);
    $this->update_deals_insert_info();
  }


  private function update_deals_insert_info() {
    $update_time = date("Y-m-d:H-i-s");
    $deal_id = $this->get_deal_id();
    
    $q = "UPDATE `deals_insert_info` SET `update_date` = '".$update_time."' WHERE `deal_id` = '".$deal_id."'";
    $this->get_sql_results($q);
    echo $deal_id." is updated\n";
  }
  
  public function update_inactive_record() {
    $source_id = $this->get_source_id();
    
    $q = "SELECT deals_insert_info.deal_id ".
         "FROM deals_insert_info ".
         "LEFT JOIN deals ON ( deals_insert_info.deal_id = deals.deal_id ) ".
         "LEFT JOIN source ON ( deals.source_id = source.source_id ) ".
         "WHERE source.source_id = ".$source_id." ".
         "AND deals.status = '1' ".
         "AND deals_insert_info.update_date < SUBTIME(".
         "CURRENT_TIMESTAMP , '0 0:30:0')";

    $r = $this->get_sql_results($q);

    while ($row = mysql_fetch_object($r)) {
      $q1 = "UPDATE `deals` SET `status` = '0' WHERE `deal_id` = '" . $row->deal_id . "'";
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
  
  public function set_deal_id($deal_id) {
    $this->deal_id = $deal_id;
  }
  
  public function get_deal_id() {
    return $this->deal_id;
  }
  
  public function set_division_id($division_id) {
    $this->division_id = $division_id;
  }
  
  public function get_division_id() {
    return $this->division_id;
  }
  
  public function set_source_id($source_id) {
    $this->source_id = $source_id;
  }
  
  public function get_source_id() {
    return $this->source_id;
  }
  
  public function set_tag_id($tag_id) {
    $this->tag_id = $tag_id;
  }
  
  public function get_tag_id() {
    return $this->tag_id;
  }
  
  public function set_business_id($business_id) {
    $this->business_id = $business_id;
  }
  
  public function get_business_id() {
    return $this->business_id;
  }
  
}
