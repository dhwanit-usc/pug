<?php

include('sqlhandler1.php');
include('redirect.php');

class YipitParser {

  public function __construct() {
    $this->sql = new sql();
    $this->sql->connect_db();
    $this->redirect = new redirect();
    $url = $this->get_url();
    $this->parse_active_deals($url);
    $this->sql->update_inactive_record($this->get_division());
  }

  private function parse_active_deals($url) {
    $response = file_get_contents($url);
    $json_o = json_decode($response);

    //check for 200 server response
    if ($json_o->meta->code != "200") {
      echo $json_o->meta->code;
      die;
    } else {
      foreach ($json_o->response->deals as $deal) {
        $record_tag = Array();
        $business = Array();

        $deals_info = Array('deal_id' => $deal->id, 'title' => $deal->title, 'date_added' => $deal->date_added, 'end_date' => $deal->end_date, 'active' => $deal->active, 'discount' => $deal->discount->raw, 'price' => $deal->price->raw, 'value' => $deal->value->raw, 'purchased' => $deal->purchased, 'left' => $deal->left);

        $url_info = Array('deal_id' => $deal->id, 'source_url' => $deal->yipit_url, 'deal_url' => $deal->url, 'original_source_url' => $this->redirect->get_redirect($deal->url));

        $division = Array('deal_id' => $deal->id, 'city' => $deal->division->slug, 'lat' => $deal->division->lat, 'long' => $deal->division->lon);

        foreach ($deal->tags as $tag) {
          $record_tag[] = Array('deal_id' => $deal->id, 'tag' => $tag->name);
        }

        foreach ($deal->business->locations as $location) {
          $business[] = Array('deal_id' => $deal->id, 'name' => $deal->business->name, 'url' => $deal->business->url, 'address' => $location->address, 'city' => $location->smart_locality, 'state' => $location->state, 'zip' => $location->zip_code, 'phone' => preg_replace('@\(|\)|\.|-|\s*@msi', '', $location->phone), 'lat' => $location->lat, 'long' => $location->lon);
        }

        $images = Array('deal_id' => $deal->id, 'image_big' => $deal->images->image_big, 'image_small' => $deal->images->image_small);

        $source = Array('deal_id' => $deal->id, 'name' => $deal->source->name);

        $record = Array('deal_info' => $deals_info, 'url_info' => $url_info, 'tags' => $record_tag, 'division' => $division, 'business' => $business, 'source' => $source, 'images' => $images);

        $this->insert_deal($record);

        unset($deals, $url_info, $division, $record_tag, $business, $source, $record);
      }
    }
  }

  private function insert_deal($record) {
    //check if deal is already in database or not
    if ($this->sql->check_deal($record['deal_info']['deal_id'])) {
      //Update the deal info
      echo $record['deal_info']['deal_id'] . " record is Updating\n";
      $this->sql->update_deal_info($record['deal_info']);
      $this->sql->update_url_info($record['url_info']);
      if (count($record['tags']) > 0) {
        //this method delete existing record and then insert
        $this->sql->update_tags($record['tags']);
      }
      $this->sql->update_division($record['division']);
      if (count($record['business']) > 0) {
        //this method delete existing record and then insert
        $this->sql->update_business($record['business']);
      }
      $this->sql->update_source($record['source']);
      $this->sql->update_images($record['images']);
    } else {
      //insert the deal info
      echo $record['deal_info']['deal_id'] . " record is Inserting\n";
      $this->sql->insert_deal_info($record['deal_info']);
      $this->sql->insert_url_info($record['url_info']);
      if (count($record['tags']) > 0) {
        $this->sql->insert_tags($record['tags']);
      }
      $this->sql->insert_division($record['division']);
      if (count($record['business']) > 0) {
        $this->sql->insert_business($record['business']);
      }
      $this->sql->insert_source($record['source']);
      $this->sql->insert_images($record['images']);
    }
  }

  private function get_url() {
    $key = 'LmKuxrrwfLp9faX4&division';
    $limit = '3000';
    $division = $this->get_division();
    $url = 'http://api.yipit.com/v1/deals/?key=' . $key . '&division=' . $division . '&limit=' . $limit;
    return $url;
  }

  private function get_division() {
    $args = getopt("d:");
    $loc = trim(strtolower($args['d']));
    if ($loc != "") {
      $division = $this->get_division_name($loc);
      return $division;
    } else {
      echo "please enter one location";
      die;
    }
  }

  private function get_division_name($loc) {
    $division_name = Array(
        'sf' => 'san-francisco',
        'ny' => 'new-york'
    );

    if (array_key_exists($loc, $division_name)) {
      return $division_name[$loc];
    } else {
      echo "please enter appropriate location";
      die;
    }
  }

}

$instance = new YipitParser();
?>	