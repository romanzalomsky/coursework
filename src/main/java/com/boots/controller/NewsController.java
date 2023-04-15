package com.boots.controller;

import com.boots.entity.Estate;
import com.boots.entity.News;
import com.boots.repository.NewsRepository;
import com.boots.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Controller
public class NewsController {

    @Autowired
    NewsService newsService;

    @Autowired
    NewsRepository newsRepository;

    @GetMapping("/news")
    public String news(@RequestParam(name = "name", required = false) String name, Model model) {
        model.addAttribute("newss", newsService.listNews(name));
        return "news";
    }

    @GetMapping("/news/{id}")
    public String newsInfo(@PathVariable Long id, Model model){
        News news = newsService.getNewsById(id);
        model.addAttribute("news", news);
        return "newssearch";
    }

    @PostMapping("/news/create")
    public String createNews(News news) throws IOException {
        newsService.saveNews(news);
        return "redirect:/";
    }

    @PostMapping("/news/delete/{id}")
    public String deleteNews(@PathVariable Long id){
        newsService.deleteNews(id);
        return "redirect:/";
    }
}
