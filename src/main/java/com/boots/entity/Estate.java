package com.boots.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;


@Entity
@Table(name = "estate")
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

    private Long previewImageId;
    private LocalDateTime dateOfCreated;
    
    public LocalDateTime getDateOfCreated() {
        return dateOfCreated;
    }

    public void setDateOfCreated(LocalDateTime dateOfCreated) {
        this.dateOfCreated = dateOfCreated;
    }

    public List<Image> getImages() {
        return images;
    }

    public void setImages(List<Image> images) {
        this.images = images;
    }

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

    public Long getPreviewImageId(Long id) {
        return previewImageId;
    }

    public void setPreviewImageId(Long previewImageId) {
        this.previewImageId = previewImageId;
    }

    public Estate() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public double getCost() {
        return cost;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getHouse_type() {
        return house_type;
    }

    public void setHouse_type(String house_type) {
        this.house_type = house_type;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
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
