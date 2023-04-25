package com.boots.entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "news")
@NoArgsConstructor
@Getter
@Setter
public class News implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @Column(name = "name", length = 255, nullable = false)
    private String name;
    @Column(name = "text", nullable = false)
    private String text;

    public News(Long id, String name, String text) {
        this.id = id;
        this.name = name;
        this.text = text;
    }

}
