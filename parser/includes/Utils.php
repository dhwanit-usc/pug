<?php

/**
 * Description of Utils
 *
 * @author hardik
 */
class Utils {
  
  /**
   * Remove $ sign from string
   * @param string $string
   * @return string 
   */
  static public function remove_dollar_sign ($string) {
    return str_replace('$', '', $string);
  }
  
  /**
   * Remove % sign from string
   * @param string $string
   * @return string 
   */
  static public function remove_percentage_sign ($string) {
    return str_replace('%', '', $string);
  }
  
  /**
   * Removes us non printable characters
   * @param string $string
   * @return string
   */
  static public function RemoveNonPrintableCharacters($string) {
    return preg_replace('/[\x00-\x1F\x80-\xFF]/', ' ', $string);
  }
  
  /**
   * Remove hyperlinks from html
   * @param string $html
   * @return string
   */
  static public function removeHyperlinks($content) {
    $content = preg_replace('@</*a[^>]*>@msi', '', $content);
    return $content;
  }
  
  /**
   * Remove all html tags and replace multiple space with single space
   * @param type $string
   * @return string 
   */
  static function strip_tags_and_collapse_spaces($string) {
    $string = strip_tags($string);
    return self::collapse_spaces($string);
  }
  
  /**
   * Replace multiple space with single space
   * @param string $string
   * @return string 
   */
  static function collapse_spaces($string) {
    $string = self::RemoveNonPrintableCharacters($string);
    return trim(preg_replace("@\s+@msi", ' ', $string));
  }
  
  /**
   * Convert word style quotes to html proper type
   * @param string $string
   * @return string
   */
  static public function convert_smart_quotes($string) {
    $search = array(chr(145),
        chr(146),
        chr(147),
        chr(148),
        chr(151));

    $replace = array("'",
        "'",
        '"',
        '"',
        '-');

    return str_replace($search, $replace, $string);
  }
}