<?php
class UserService
{
    public function __construct(
        private UserRepository $userRepository
    ) {}

    public function register(
        string $email
    ): int {
        $user = new User(
            null,
            $email
        );

        return $this->userRepository->create($user);
    }
}