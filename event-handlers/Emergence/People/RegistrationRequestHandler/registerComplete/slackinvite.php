<?php

$token = Emergence\Slack\API::$accessToken;
$url = "https://slack.com/api/users.admin.invite?token={$token}&email={$_EVENT['User']->Email}";

$result = file_get_contents($url, null, stream_context_create(array(
    'http' => array(
        'protocol_version' => 1.1,
        'user_agent'       => 'PHP-LADDR/2.0',
        'method'           => 'POST',
        'header'           => "Content-type: application/json\r\n".
                              "Connection: close"
    ),
)));