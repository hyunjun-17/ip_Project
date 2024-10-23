package com.ip_project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ip_project.entity.Member;
import com.ip_project.repository.MemberRepository;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Service
public class MemberService {

    @Autowired
    private MemberRepository repository;

    private final PasswordEncoder encoder;

    @Autowired
    public MemberService(PasswordEncoder passwordEncoder) {
        this.encoder = passwordEncoder;
    }

    @Transactional
    public void join(Member vo) {
        // 아이디 중복 체크
        if (repository.existsByUsername(vo.getUsername())) {
            throw new RuntimeException("이미 사용중인 아이디입니다.");
        }

        // 현재 날짜 설정
        String currentDate = LocalDateTime.now()
                .format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
        vo.setJoin_date(currentDate);

        // 비밀번호 암호화
        vo.setPassword(encoder.encode(vo.getPassword()));

        try {
            repository.save(vo);
        } catch (Exception e) {
            throw new RuntimeException("회원가입 처리 중 오류가 발생했습니다.");
        }
    }

    // 아이디 중복 확인
    public boolean isUsernameAvailable(String username) {
        return !repository.existsByUsername(username);
    }
}