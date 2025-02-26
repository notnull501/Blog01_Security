package com.stack.blog.service;

import com.stack.blog.domain.User;
import com.stack.blog.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Service;

//Spring Security에서 사용자 정보를 가져오는 인터페이스
@RequiredArgsConstructor
@Service
public class UserDetailService implements UserDetailsService {

    private final UserRepository userRepository;
//이메일로 사용자의  정보를 가져오기
    @Override
    public User loadUserByUsername(String email) {
        return userRepository.findByEmail(email)
                 .orElseThrow(() -> new IllegalArgumentException((email)));
    }
}
