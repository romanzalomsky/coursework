package com.boots.controller;

import com.boots.entity.Estate;
import com.boots.repository.EstateRepository;
import com.boots.service.EstateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Controller
public class EstateController {

    @Autowired
    EstateService estateService;

    @Autowired
    EstateRepository estateRepository;

    @GetMapping("/view")
    public String estate(@RequestParam(name = "name", required = false) String name, Model model) {
        model.addAttribute("estates", estateService.listEstate(name));
        return "view";
    }

/*    @GetMapping("/view/sortEstate")
    public String estateTypeHouse(Long id, Model model) {
        model.addAttribute("estates", estateRepository.findByType(id));
        return "view";
    }*/

    @GetMapping("/estate/{id}")
    public String estateInfo(@PathVariable Long id, Model model){
        Estate estate = estateService.getEstateById(id);
        model.addAttribute("estate", estate);
        /*        model.addAttribute("estate", estateService.getEstateById(id));*/
        model.addAttribute("images", estate.getImages());
        return "search";
    }

    @PostMapping("/estate/create")
    public String createEstate(@RequestParam("file1") MultipartFile file1,
                               @RequestParam("file2") MultipartFile file2,
                               @RequestParam("file3") MultipartFile file3,
                               Estate estate) throws IOException {
        estateService.saveEstate(estate, file1, file2, file3);
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
