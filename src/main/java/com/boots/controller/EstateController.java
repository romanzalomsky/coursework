package com.boots.controller;

import com.boots.entity.Estate;
import com.boots.repository.EstateRepository;
import com.boots.service.EstateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;

@Controller
public class EstateController {

    @Autowired
    EstateService estateService;

    @Autowired
    EstateRepository estateRepository;

    @GetMapping("/view")
    public String estate(@RequestParam (name = "name", required = false) String name,
                         Model model){
        model.addAttribute("estates", estateService.listEstate(name));
        return "view";
    }

    @GetMapping("/estate/{id}")
    public String estateInfo(@PathVariable Long id, Model model){
        Estate estate = estateService.getEstateById(id);
        model.addAttribute("estate", estate);
        return "search";
    }

    @PostMapping("/estate/create")
    public String createEstate(Estate estate) throws IOException {
        estateService.saveEstate(estate);
        return "redirect:/";
    }

    @PostMapping("/estate/delete/{id}")
    public String deleteEstate(@PathVariable Long id){
        estateService.deleteEstate(id);
        return "redirect:/";
    }


/*    @GetMapping("/addEstate")
    public String estateList(Model model) {
        model.addAttribute("allEstates", estateService.allEstates());
        return "addEstate";
    }*/

}
