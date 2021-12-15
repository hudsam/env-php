<?php

$set_USER = (empty($_ENV['USER'])) ? 'World' : $_ENV['USER'];
echo 'Hello, ' . $set_USER . ' !';
