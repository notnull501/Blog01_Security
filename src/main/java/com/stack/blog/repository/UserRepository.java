package com.stack.blog.repository;

import com.stack.blog.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.Optional;

//이메일로 사용자 정보 가져옴
public interface UserRepository extends JpaRepository<User, Long> {
    Optional<User> findByEmail(String email);
}
