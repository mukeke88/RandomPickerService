package com.mukeke.randompickerservice.service;

public interface KafkaProducerService {
    void sendMessage(String topic, String message);
}
