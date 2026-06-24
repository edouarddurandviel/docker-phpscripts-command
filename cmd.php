<?php 
define('ABSPATH', realpath(__DIR__));
require_once ABSPATH . "/commands/CreatesUserZipCommand.php";

$commands = [
    'zip' => new CreatesUserZipCommand(),
];

$commandName = $argv[1] ?? '';

if (!isset($commands[$commandName])) {
    exit("Unknown command" . PHP_EOL);
}

exit(
    $commands[$commandName]->execute(
        array_slice($argv, 2)
    )
);