#!/bin/php
<?php
namespace test;

require dirname(__FILE__).'/../vendor/autoload.php';

use Facebook\WebDriver\Remote\DesiredCapabilities;
use Facebook\WebDriver\Remote\RemoteWebDriver;
use Facebook\WebDriver\WebDriverBy;

$driver = RemoteWebDriver::create('http://localhost:4444/wd/hub', DesiredCapabilities::chrome());
$driver->get('https://naver.com');
$title = $driver
    ->findElement(WebDriverBy::tagName('title'))
    ->getAttribute('innerText');
echo $title;
