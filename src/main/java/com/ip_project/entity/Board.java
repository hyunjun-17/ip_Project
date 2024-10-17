package com.ip_project.entity;

import java.sql.Date;

import jakarta.persistence.*;


import lombok.Data;
@Data
@Entity // Hibernate가 아래 vo 설계대로 테이블을 생성하기 위한 키워드
public class Board {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "BOARD_SEQ")
    @SequenceGenerator(name = "BOARD_SEQ", sequenceName = "BOARD_SEQ", allocationSize = 1)
    private Long idx;

    private String title; // 제목

    @Column(length = 2000) // 컬럼의 길이 조절 /안했을때 default =255
    private String content; // 내용

    @Column(updatable = false) // 수정할때 작성자는 수정이 안되게 하겠다
    private String writer; // 작성자

    @Column(insertable = false, updatable = false, columnDefinition = "datetime default now()")
    //날짜는 입력할때 기본값으로 now() 함수를 사용하며 수정이 안되게 하겠다
    private Date indate; // 날짜

    @Column(columnDefinition = "NUMBER(19,0) DEFAULT 0")
    private Long count; // 조회수

}