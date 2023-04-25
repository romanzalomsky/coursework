package com.boots.entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "messages")
@NoArgsConstructor
@Getter
@Setter
public class Messages implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "text", nullable = false)
    private String text;

    public Messages(Long id, String text) {
        this.id = id;
        this.text = text;
    }

}
