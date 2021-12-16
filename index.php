<?php

$set_USER = (empty(getenv('USER'))) ? 'World' : getenv('USER');
echo 'Hello, ' . $set_USER . ' !';
