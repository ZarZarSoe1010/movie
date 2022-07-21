package com.movie.model;

import java.time.LocalDate;

import org.springframework.stereotype.Repository;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Repository
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Movie {
	
	private int id;
	private String name;
	private String description;
	private LocalDate releaseDate;
	private String trailer;
	private String poster;
	private String episodes;
	private String normalDl;
	private String premiumDl;
}
