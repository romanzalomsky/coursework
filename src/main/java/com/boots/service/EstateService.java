package com.boots.service;

import com.boots.entity.Estate;
import com.boots.entity.Image;
import com.boots.repository.EstateRepository;
import org.springframework.beans.factory.annotation.Autowired;
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
        if(name != null) return estateRepository.findByName(name);
        return estateRepository.findAll();
    }

/*    public List<Estate> allEstates() {return estateRepository.findAll();}*/

/*    public List<Estate> estateCountryFilter(String country){
        if(country != null) return estateRepository.findByCountry(country);
        return estateRepository.findAll();

    }*/
    public void saveEstate(Estate estate, MultipartFile file1, MultipartFile file2, MultipartFile file3) throws IOException {

        Image image1;
        Image image2;
        Image image3;

        if(file1.getSize() != 0){
            image1 = toImageEntity(file1);
            image1.setPreviewImage(true);
            estate.addImageToEstate(image1);
        }
        if(file2.getSize() != 0){
            image2 = toImageEntity(file2);
            estate.addImageToEstate(image2);
        }
        if(file3.getSize() != 0){
            image3 = toImageEntity(file3);
            estate.addImageToEstate(image3);
        }

        Estate estateFromDb = estateRepository.save(estate);
        estateFromDb.setPreviewImageId(estateFromDb.getImages().get(0).getId());
        estateRepository.save(estate);
    }

    private Image toImageEntity(MultipartFile file) throws IOException {

        Image image = new Image();
        image.setName(file.getName());
        image.setOriginalFileName(file.getOriginalFilename());
        image.setContentType(file.getContentType());
        image.setSize(file.getSize());
        image.setBytes(file.getBytes());
        return image;
    }

    public void deleteEstate(Long id) {
        estateRepository.deleteById(id);
    }

    public Estate getEstateById(Long id){
        return estateRepository.findById(id).orElse(null);
    }
}
