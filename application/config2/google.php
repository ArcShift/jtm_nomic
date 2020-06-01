<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------
|  Google API Configuration
| -------------------------------------------------------------------
| 
| To get API details you have to create a Google Project
| at Google API Console (https://console.developers.google.com)
| 
|  client_id         string   Your Google API Client ID.
|  client_secret     string   Your Google API Client secret.
|  redirect_uri      string   URL to redirect back to after login.
|  application_name  string   Your Google application name.
|  api_key           string   Developer key.
|  scopes            string   Specify scopes
*/
$config['google']['client_id']        = '299574065913-7h05p08ljjab5ddc3u9l1s3geibrd36d.apps.googleusercontent.com';
$config['google']['client_secret']    = 'ZWb9dMQRe13eT1tAt0RpI01Z';
$config['google']['redirect_uri']     = 'https://tajalapak.com/auth/google_login';
$config['google']['application_name'] = 'Tajalapak Indonesia';
$config['google']['api_key']          = '';
$config['google']['scopes']           = array();