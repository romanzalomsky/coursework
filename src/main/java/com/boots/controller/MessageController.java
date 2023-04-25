package com.boots.controller;

import com.boots.entity.Messages;
import com.boots.entity.News;
import com.boots.repository.MessageRepository;
import com.boots.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.IOException;

@Controller
public class MessageController {

    @Autowired
    MessageService messageService;

    @Autowired
    MessageRepository messageRepository;


    @GetMapping("/messages")
    public String messages(@RequestParam(name = "text", required = false) String text, Model model) {
        model.addAttribute("texts", messageService.listMessages(text));
        return "messages";
    }

/*    @GetMapping("/messages/{id}")
    public String messagesInfo(@PathVariable Long id, Model model){
        Messages messages = messageService.getMessagesById(id);
        model.addAttribute("messages", messages);
        return "newssearch";
    }*/

    @PostMapping("/profile/create")
    public String createMessages(Messages messages) throws IOException {
        messageService.saveMessages(messages);
        return "redirect:/";
    }

    @PostMapping("/messages/delete/{id}")
    public String deleteMessages(@PathVariable Long id){
        messageService.deleteMessages(id);
        return "redirect:/";
    }
}
