package com.mukeke.randompickerservice.service.Impl;

import com.mukeke.randompickerservice.service.KafkaConsumerService;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Service;

@Service
public class KafkaConsumerServiceImpl implements KafkaConsumerService {
    @KafkaListener(topics = "randomPicker-actions", groupId = "randomPicker-group")
    public void listen(String message) {
        System.out.println("Received message: " + message);
        // Additional logic for notifications or logging
    }
}
