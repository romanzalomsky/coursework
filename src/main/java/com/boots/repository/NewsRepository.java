package com.boots.repository;

import com.boots.entity.Estate;
import com.boots.entity.News;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface NewsRepository extends JpaRepository<News, Long> {

    List<News> findByName(String name);
}
