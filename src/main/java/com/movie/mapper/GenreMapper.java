package com.movie.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.movie.model.Genre;

@Mapper
public interface GenreMapper {
    
    @Select("select * from genres")
    List<Genre>findAll();

    @Select("select * from generes where id=#{id}")
    Genre findById(int id);

    @Insert("insert into genres(id,name)values(#{id},#{name})")
    void insertGenre(Genre genre);

    @Delete("delete from genres where id=#{id}")
    void deleteGenre(int id);

    @Update("update genres set name=#{name} where id=#{id}")
    void updateGenre(Genre genre);

    
}
