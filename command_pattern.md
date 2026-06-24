PHP can be used to create command-line scripts (CLI) much like shell scripts.

## Basic CLI Script

```php
#!/usr/bin/env php
<?php

echo "Hello World\n";
```

Make executable:

```bash
chmod +x hello.php
./hello.php
```

Or run directly:

```bash
php hello.php
```

---

## Reading Command Arguments

```php
<?php

$name = $argv[1] ?? 'Guest';

echo "Hello {$name}\n";
```

Run:

```bash
php greet.php John
```

Output:

```text
Hello John
```

---

## Database Script Example

```php
<?php

require __DIR__ . '/bootstrap.php';

$userRepository = new UserRepository(
    Database::getConnection()
);

$users = $userRepository->findAll();

foreach ($users as $user) {
    echo "{$user->id} {$user->email}\n";
}
```

Run:

```bash
php scripts/list-users.php
```

---

## Command Pattern

For multiple commands:

```php
interface Command
{
    public function execute(array $args): int;
}
```

```php
class CreateUserCommand implements Command
{
    public function execute(array $args): int
    {
        echo "Creating user...\n";

        return 0;
    }
}
```

Dispatcher:

```php
$commands = [
    'create-user' => new CreateUserCommand(),
];

$commandName = $argv[1] ?? '';

if (!isset($commands[$commandName])) {
    exit("Unknown command\n");
}

exit(
    $commands[$commandName]->execute(
        array_slice($argv, 2)
    )
);
```

Usage:

```bash
php app.php create-user
```

---

## Using Symfony Console (Recommended)

For professional CLI applications, use [Symfony Console](https://symfony.com/doc/current/components/console.html?utm_source=chatgpt.com).

Install:

```bash
composer require symfony/console
```

Example:

```php
class ListUsersCommand extends Command
{
    protected static $defaultName = 'users:list';

    protected function execute(
        InputInterface $input,
        OutputInterface $output
    ): int {
        $output->writeln('Listing users');

        return Command::SUCCESS;
    }
}
```

Run:

```bash
php bin/console users:list
```

Benefits:

* Options (`--email=test@example.com`)
* Arguments validation
* Tables and formatted output
* Progress bars
* Interactive prompts
* Auto-generated help

Typical structure:

```text
project/
├── bin/
│   └── console
├── src/
│   ├── Command/
│   │   ├── ListUsersCommand.php
│   │   └── CreateUserCommand.php
│   ├── Repository/
│   ├── Entity/
│   └── Service/
└── composer.json
```

For anything beyond a couple of scripts, Symfony Console is the standard approach in modern PHP applications.
