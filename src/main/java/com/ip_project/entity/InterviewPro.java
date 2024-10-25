package com.ip_project.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "INTERVIEW_PRO")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class InterviewPro {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "IPRO_SEQ")
    @SequenceGenerator(name = "IPRO_SEQ", sequenceName = "IPRO_SEQ", allocationSize = 1)
    @Column(name = "ipro_id")
    private Long iproId;

    @Column(name = "ipro_q1", length = 1000, nullable = false)
    private String iproQ1;

    @Column(name = "ipro_a1", length = 2000, nullable = false)
    private String iproA1;

    @Column(name = "ipro_q2", length = 1000, nullable = false)
    private String iproQ2;

    @Column(name = "ipro_a2", length = 2000, nullable = false)
    private String iproA2;

    @Column(name = "ipro_q3", length = 1000, nullable = false)
    private String iproQ3;

    @Column(name = "ipro_a3", length = 2000, nullable = false)
    private String iproA3;

    @Column(name = "ipro_q4", length = 1000, nullable = false)
    private String iproQ4;

    @Column(name = "ipro_a4", length = 2000, nullable = false)
    private String iproA4;

    @Column(name = "ipro_q5", length = 1000, nullable = false)
    private String iproQ5;

    @Column(name = "ipro_a5", length = 2000, nullable = false)
    private String iproA5;

    @Column(name = "ipro_q6", length = 1000, nullable = false)
    private String iproQ6;

    @Column(name = "ipro_a6", length = 2000, nullable = false)
    private String iproA6;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idx")
    private Member member;
}