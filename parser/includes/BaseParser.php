<?php
/**
 * Description of BaseParser
 *
 * @author hardik
 */
include 'CommandLine.php';
include 'sqlhandler.php';
include 'Utils.php';
include 'location.php';
include 'DivisionList.php';


abstract class BaseParser {
  
  /**
   * ACTIVE_STATUS is for deal is active
   */
  const ACTIVE_STATUS = 1;
  
  /**
   * INACTIVE_STATUS is for deal is inactive
   */
  const INACTIVE_STATUS = 0;
  
  public function __construct() {
    $this->source_name = $this->get_source_name();
    $this->sql = new sqlhandler();
    $this->location = new location();
    $this->do_parse_site();
    $this->sql->update_inactive_record();
  }
  
  protected abstract function do_parse_site();
  
  protected abstract function get_source_name();
  
  public function process_deals(array $deals) {
    //process source
    $this->process_for_source();
    
    foreach($deals as $deal) {
      
      if(!$this->sql->check_deal($deal['deal_info']['deal_url'])){
        echo "Inserting deal :: ".$deal['deal_info']['deal_url']."\n";
        
        //process for deal
        $this->sql->insert_deal($deal['deal_info']);
        
        //process for location
        $this->process_for_business_location($deal['business']);
        
        //process for tags
        $this->process_for_tags($deal['tags']);
      }
      else {
        $this->sql->update_deal($deal['deal_info']);
      }
    }
  }
  
  private function process_for_tags(array $tags) {
    if(!empty($tags)) {
      foreach ($tags as $tag) {
        if (!$this->sql->check_tags($tag)) {
          $this->sql->insert_tags($tag);
        }
        $this->sql->insert_deal_tag();
      }
    }
  }

  private function process_for_business_location(array $locations) {
    if (!empty($locations)){
      foreach ($locations as $location) {
        //get latitute and longitude from address from google geocode api
        $data = $this->location->get_latitude_longitude_from_address($location);

        if (!$this->sql->check_business($data['lat'], $data['lon'])) {
          $location['lat'] = $data['lat'];
          $location['lon'] = $data['lon'];
          $this->sql->insert_business($location);
        }
        $this->sql->insert_deal_business();
      }
    }  
  }

  private function process_for_source() {
    if(!$this->sql->check_source($this->source_name)){
      //source is not in database so insert it
      $this->sql->insert_source($this->source_name);
    }
  }
  
}
