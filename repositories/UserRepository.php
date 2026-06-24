<?php

require_once ABSPATH . "/entities/UserEntity.php";

class UserRepository
{
    public function __construct(
        private PDO $db
    ) {}

    public function findById(int $id): ?User
    {
        $stmt = $this->db->prepare(
            "SELECT * FROM user WHERE id = ?"
        );

        $stmt->execute([$id]);

        $row = $stmt->fetch(PDO::FETCH_ASSOC);

        if (!$row) {
            return null;
        }

        return new User(
            $row['id'],
            $row['email']
        );
    }

    /** @return User[] */
    public function findAll(): array {
        $stmt = $this->db->query("SELECT id, email FROM user");

        $users = [];

        // collection of User
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $users[] = new User(
                $row['id'],
                $row['email']
            );
        }

        return $users;
    }

    public function create(User $user): int
    {
        $stmt = $this->db->prepare(
            "INSERT INTO user(email)
             VALUES (?)"
        );

        $stmt->execute([
            $user->email
        ]);

        return (int)$this->db->lastInsertId();
    }

    public function update(User $user): bool
    {
        $stmt = $this->db->prepare(
            "UPDATE user
             SET email = ?
             WHERE id = ?"
        );

        return $stmt->execute([
            $user->email,
            $user->id
        ]);
    }

    public function delete(int $id): bool
    {
        $stmt = $this->db->prepare(
            "DELETE FROM user WHERE id = ?"
        );

        return $stmt->execute([$id]);
    }
}