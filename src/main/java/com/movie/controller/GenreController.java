package com.movie.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.movie.mapper.GenreMapper;
import com.movie.model.Genre;


@Controller
public class GenreController {
    @Autowired
    GenreMapper genreMapper;

    @GetMapping("/genreList")
    public String Genre(Model model){
        model.addAttribute("genreList", genreMapper.findAll());
        return "";
    }

    @GetMapping("/setupAddGenre")
    public String setupAddGenre(){
        return "";
    }

    @PostMapping("/addGenre")
    public String addGenre(@ModelAttribute Genre genre,Model model,RedirectAttributes redirect){
        genreMapper.insertGenre(genre);
        return "redirect:/admin/movie/add";
    }

    @GetMapping("/setupUpdateGenre")
    public String setupUpdateGenre(@RequestParam("selectedId")int id,Model m){
        Genre genre=genreMapper.findById(id);
        m.addAttribute("genre", genre);
        return "";
    }

    @PostMapping("/updateGenre")
    public String updateGenre(@ModelAttribute Genre genre,Model m){
        genreMapper.updateGenre(genre);
        return "";
    }

    @GetMapping("/deleteGenre")
    public String deleteGenre(@RequestParam("selectedId")int id,Model m){
        genreMapper.deleteGenre(id);
        return "";
    }

    

}