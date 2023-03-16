package com.boots.controller;

import com.boots.entity.Estate;
import com.boots.service.EstateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Controller
public class EstateController {

    @Autowired
    EstateService estateService;

    @GetMapping("/view")
    public String estate(@RequestParam(name = "name", required = false) String name, Model model) {
        model.addAttribute("estates", estateService.listEstate(name));
        return "view";
    }

    @GetMapping("/estate/{id}")
    public String estateInfo(@PathVariable Long id, Model model){
        Estate estate = estateService.getEstateById(id);
        model.addAttribute("estate", estate);
/*        model.addAttribute("estate", estateService.getEstateById(id));*/
        model.addAttribute("images", estate.getImages());
        return "search";
    }

/*    @GetMapping("/view")
    public String estateCountryFilter(@RequestParam(name = "country", required = false) String country, Model model){
        model.addAttribute("estates", estateService.estateCountryFilter(country));
        return "view";
    }*/

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
