<?php

/**
 * Description of location
 *
 * @author hardik
 */
class location {
  
  public function get_latitude_longitude_from_address(array $location) {
    $address = $location['address1'].', '.$location['address2'].', '.$location['city'].', '.$location['state'].', '.$location['zipcode'];
    $address = $this->replace_spaces($address);
    return $this->get_lat_lon($address);
  }
  
  public function get_latitude_longitude_of_division($division_name) {
    $division_name = $this->replace_spaces($division_name);
    return $this->get_lat_lon($division_name);
  }


  private function get_lat_lon($address) {
    $geocode_api_url = 'http://maps.googleapis.com/maps/api/geocode/json?address='.$address.'&sensor=true';
    $geocode_api_response = file_get_contents($geocode_api_url);
    $json_decoded_geocode_response = json_decode($geocode_api_response);
    
    return array(
        'lat'=>$json_decoded_geocode_response->results[0]->geometry->location->lat, 
        'lon'=>$json_decoded_geocode_response->results[0]->geometry->location->lng
    );
  }
  
  private function replace_spaces($string) {
    return preg_replace('@\s+@msi', '+', $string);
  }
}
