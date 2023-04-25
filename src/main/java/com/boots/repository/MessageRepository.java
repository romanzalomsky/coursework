package com.boots.repository;

import com.boots.entity.Estate;
import com.boots.entity.Messages;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface MessageRepository extends JpaRepository<Messages, Long> {

    List<Messages> findByText(String text);
}
