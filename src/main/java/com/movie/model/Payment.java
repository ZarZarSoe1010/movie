package com.movie.model;

import org.springframework.stereotype.Repository;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Repository
public class Payment {
    private int id;
    private String name;
    private String packages;
    private String screenshot;

}
