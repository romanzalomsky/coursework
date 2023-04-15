package com.boots.entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;


@Entity
@Table(name = "estate")
@NoArgsConstructor
@Getter
@Setter
public class Estate implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", length = 20, nullable = false)
    private Long id;
    @Column(name = "name", length = 255, nullable = false)
    private String name;
    @Column(name = "description", length = 255, nullable = false)
    private String description;
    @Column(name = "country")
    private String country;
    @Column(name = "city")
    private String city;
    @Column(name = "cost", length = 255, nullable = true)
    private double cost;
    @Column(name = "type", length = 255, nullable = false)
    private String type;
    @Column(name = "house_type")
    private String house_type;
    @Column(name = "address")
    private String address;
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "estate")
    private List<Image> images = new ArrayList<>();

/*    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
    private User user;*/

    private Long previewImageId;
    private LocalDateTime dateOfCreated;

    @PrePersist
    private void init(){
        dateOfCreated = LocalDateTime.now();
    }

    public void addImageToEstate(Image image){
        image.setEstate(this);
        images.add(image);
    }

    public Estate(Long id, String name, String description, String country, String city, double cost, String type, String house_type, String address) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.country = country;
        this.city = city;
        this.cost = cost;
        this.type = type;
        this.house_type = house_type;
        this.address = address;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Estate estate = (Estate) o;

        return id.equals(estate.id);
    }

    @Override
    public int hashCode() {
        return id.hashCode();
    }
}
