<?php
/**
 * Description of Dealster
 *
 * @author hardik
 */
include 'includes/BaseParser.php';

class DealsterParser extends BaseParser {

  protected function do_parse_site() {
    $xml_response = $this->get_response_from_live_feed();
    //$response = simplexml_load_file('dealster.xml');
    $response = simplexml_load_string($xml_response);
    $this->parse_deals($response);
    
  }
  
  private function parse_deals($response) {
    foreach ($response->channel->deal as $obj) {
      $deal = get_object_vars($obj);
      $deal_info = $this->get_deal_info($deal);
      $business_info = $this->get_business_info($deal);
      $tags = $this->get_tags($deal);
      $data[] = array(
            'deal_info' => $deal_info,
            'business' => $business_info,
            'tags' => $tags
        );
    }
    //print_r($data);
    $this->process_deals($data);
  }

  private function get_deal_info($deal) {
    return array(
        'deal_full_title' => Utils::strip_tags_and_collapse_spaces($deal['title']),
        'deal_short_title' => '',
        'deal_url' => $deal['detailsUrl'],
        'status' => BaseParser::ACTIVE_STATUS,
        'image' => $deal['image'],
        'start_date' => $deal['pubDate'],
        'end_date' => $deal['expDate'],
        'discount_amount' => Utils::remove_dollar_sign($deal['price']),
        'original_price' => Utils::remove_dollar_sign($deal['value']),
        'discount' => Utils::remove_percentage_sign($deal['discount']),
        'expiration_date' => $deal['expires'],
        'details' => Utils::strip_tags_and_collapse_spaces($deal['summary']),
        'quantity_left' => '',
        'quantity_sold' => ''
    );
  }
  
  private function get_tags($deal) {
    return array(
        $deal['categoryName'],
        $deal['subcategoryName']
    );
  }

  private function get_business_info($deal) {
    $business_info = array();
    $locations = $deal['location'];
    if(is_object($locations)){
      $location = (array) $locations;
      if($this->check_locaiton($location)){
        $business_info[] = array(
          'business_name' => $deal['merchantName'], 
          'address1' => $location['addressLine'],
          'address2' => '',
          'city' => $location['city'],
          'state' => $location['state'],
          'zipcode' => $location['zipCode'],
          'website_url' => $deal['merchantUrl']
        );
      }
    }
    else {
      foreach($locations as $location){
        $location = (array) $location;
        if($this->check_locaiton($location)){
          $business_info[] = array(
            'business_name' => $deal['merchantName'], 
            'address1' => $location['addressLine'],
            'address2' => '',
            'city' => $location['city'],
            'state' => $location['state'],
            'zipcode' => $location['zipCode'],
            'website_url' => $deal['merchantUrl']
          );
        }
      }
    } 
    return $business_info;
  }
  
  private function check_locaiton(array $location) {
    foreach($location as $key => $value) {
      if(is_object($value)){
        return FALSE;
      }
    }
    return TRUE;
  }


  private function get_response_from_live_feed() {
    //1549 is our affilivate id number
    $url = 'http://www.dealster.com/live-feed/1549';
    $response = file_get_contents($url);
    return $response;
  }


  protected function get_source_name() {
    return "Dealster";
  }
}

$instence = new DealsterParser();