<?php
/**
 * Description of BaseParser
 *
 * @author hardik
 */

include 'includes/BaseParser.php';

class GroupOnParser extends BaseParser {

  protected function do_parse_site() {
    $divisions = $this->get_division_list();
    foreach($divisions as $division){
      echo "WORKING FOR :: ".$division."\n";
      echo "________________________________\n\n";
      $url = $this->get_api_url($division);
      $response = $this->get_json_response($url);
      $this->parse_deals($response);
    }
  }

  private function parse_deals($response) {
    foreach ($response->deals as $deal) {
      if (preg_match('@open@msi', $deal->status)) {
        $deal_info = $this->get_deal_info($deal);
        $business_info = $this->get_business_info($deal);
        $tags = $this->get_tags($deal);
        $data[] = array(
            'deal_info' => $deal_info,
            'business' => $business_info,
            'tags' => $tags
        );
      }
      else {
        echo "Deal is Closed :: ".$deal->dealUrl."\n";
      }
    }
    $this->process_deals($data);
  }

  private function get_deal_info($deal) {
    return array(
        'deal_full_title' => Utils::strip_tags_and_collapse_spaces($deal->title),
        'deal_short_title' => Utils::strip_tags_and_collapse_spaces($deal->announcementTitle),
        'deal_url' => $deal->dealUrl,
        'status' => BaseParser::ACTIVE_STATUS,
        'image' => $deal->grid4ImageUrl,
        'start_date' => $deal->startAt,
        'end_date' => $deal->endAt,
        'discount_amount' => Utils::remove_dollar_sign($deal->options[0]->discount->formattedAmount),
        'original_price' => Utils::remove_dollar_sign($deal->options[0]->price->formattedAmount),
        'discount' => $deal->options[0]->discountPercent,
        'expiration_date' => $deal->options[0]->expiresAt,
        'details' => Utils::strip_tags_and_collapse_spaces($deal->options[0]->details[0]->description),
        'quantity_left' => $deal->options[0]->remainingQuantity,
        'quantity_sold' => $deal->options[0]->soldQuantity
    );
  }
  
  private function get_business_info($deal) {
    $business_info = array();
    foreach ($deal->options[0]->redemptionLocations as $location) {
      $business_info[] = array(
          'business_name' => Utils::strip_tags_and_collapse_spaces($deal->merchant->name), 
          'address1' => $location->streetAddress1,
          'address2' => $location->streetAddress2,
          'city' => $location->city,
          'state' => $location->state,
          'zipcode' => $location->postalCode,
          'website_url' => $deal->merchant->websiteUrl
      );
    }
    return $business_info;
  }
  
  private function get_tags($deal) {
    $tags = array();
    foreach($deal->tags as $tag){
      $tags[] = $tag->name;
    }
    return $tags;
  }

  private function get_api_url($division) {
    $key = 'ad5a0910196dda1bdf1bc8a5e81d59821f919009';
    return 'http://api.groupon.com/v2/deals.json?client_id='.$key.'&division_id='.$division;
  }

  private function get_json_response($url) {
    return json_decode(file_get_contents($url));
  }
  
  private function get_division_list() {
    return array(
        'san-francisco',
        'new-york',
        'chicago'
    );
  }

  protected function get_source_name() {
    return "Group On";
  }

}

$instence = new GroupOnParser();