<?php

Laddr::$chatLinker = function($channel = null) {
    return 'https://opencltbrigade.slack.com/messages/'.urlencode($channel ?: 'general').'/';
};