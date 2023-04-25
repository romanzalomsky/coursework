package com.boots.service;

import com.boots.entity.Estate;
import com.boots.entity.Messages;
import com.boots.entity.News;
import com.boots.repository.MessageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.io.IOException;
import java.util.List;

@Service
public class MessageService {

    @PersistenceContext
    private EntityManager em;

    @Autowired
    MessageRepository messageRepository;

    public List<Messages> listMessages(String messages){
        if(messages != null) return messageRepository.findByText(messages);
        return messageRepository.findAll();
    }

    public void saveMessages(Messages messages) throws IOException {
        messageRepository.save(messages);
    }

    public void deleteMessages(Long id) {
        messageRepository.deleteById(id);
    }

    public Messages getMessagesById(Long id){
        return messageRepository.findById(id).orElse(null);
    }
}
