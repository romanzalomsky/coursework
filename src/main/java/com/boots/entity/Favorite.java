package com.boots.entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "favorite")
@NoArgsConstructor
@Getter
@Setter
public class Favorite implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", length = 20, nullable = false)
    private Long id;

    @Column(name = "user_id", length = 20, nullable = false)
    private Long user_id;

    @Column(name = "estate_id", length = 20, nullable = false)
    private Long estate_id;

    public Favorite(Long id, Long user_id, Long estate_id) {
        this.id = id;
        this.user_id = user_id;
        this.estate_id = estate_id;
    }
}
