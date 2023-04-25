package com.boots.service;

import com.boots.entity.Estate;
import com.boots.entity.User;
import com.boots.repository.EstateRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.io.IOException;
import java.util.List;

@Service
public class EstateService {

    @PersistenceContext
    private EntityManager em;

    @Autowired
    EstateRepository estateRepository;

    public List<Estate> listEstate(String name){
        if(name != null)  return estateRepository.findByName(name);
        return estateRepository.findAll();
    }

/*    public List<Estate> listEstate(){
        return estateRepository.findAll();
    }*/

    public void saveEstate(Estate estate) throws IOException {
        estateRepository.save(estate);
    }


    public void deleteEstate(Long id) {
        estateRepository.deleteById(id);
    }

    public Estate getEstateById(Long id){
        return estateRepository.findById(id).orElse(null);
    }

}
