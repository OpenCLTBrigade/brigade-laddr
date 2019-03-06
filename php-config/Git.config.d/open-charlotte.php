<?php

Git::$repositories['open-charlotte'] = [
    'remote' => 'git@github.com:OpenCLTBrigade/brigade-laddr.git',
    'originBranch' => 'master',
    'workingBranch' => 'master',
    'trees' => [
        'event-handlers',
        'html-templates',
        'php-classes',
        'php-config/Git.config.d',
        'php-config/Laddr.config.d',
        'php-config/RemoteSystems/Twitter.config.php',
        'php-config/Session.config.php',
        'site-root/img'
    ]
];