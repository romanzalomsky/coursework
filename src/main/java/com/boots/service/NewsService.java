package com.boots.service;

import com.boots.entity.News;
import com.boots.repository.NewsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.io.IOException;
import java.util.List;

@Service
public class NewsService {

    @PersistenceContext
    private EntityManager em;

    @Autowired
    NewsRepository newsRepository;

    public List<News> listNews(String name){
        if(name != null) return newsRepository.findByName(name);
        return newsRepository.findAll();
    }

    public void saveNews(News news) throws IOException {newsRepository.save(news);}

    public void deleteNews(Long id) {
        newsRepository.deleteById(id);
    }

    public News getNewsById(Long id){
        return newsRepository.findById(id).orElse(null);
    }
}
