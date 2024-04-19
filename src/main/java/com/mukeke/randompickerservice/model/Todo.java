package com.mukeke.randompickerservice.model;

import lombok.Data;

@Data
public class Todo {
    private Integer id;
    private String text;
    private Integer weight;
    private Boolean outdated;
}
