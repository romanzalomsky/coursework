package com.boots.repository;

import com.boots.entity.Estate;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface EstateRepository extends JpaRepository<Estate, Long> {
    List<Estate> findByName(String name);
/*    List<Estate> findByCountry(String country);*/
}
