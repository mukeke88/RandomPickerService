package com.mukeke.randompickerservice.mapper;

import com.mukeke.randompickerservice.model.Todo;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface TodoMapper {
    @Select("SELECT * FROM todos")
    List<Todo> findAll();

    @Insert("INSERT INTO todos(text, weight, outdated) VALUES(#{text}, #{weight}, #{outdated})")
    @Options(useGeneratedKeys = true, keyProperty = "id")
    void insert(Todo todo);

    @Update("UPDATE todos SET text = #{text}, weight = #{weight}, outdated = #{outdated} WHERE id = #{id}")
    void update(Todo todo);

    @Delete("DELETE FROM todos WHERE id = #{id}")
    void deleteById(int id);

    @Update("UPDATE todos SET weight = #{weight} WHERE id = #{id}")
    void updateTodoWeight(int id, int weight);
}
