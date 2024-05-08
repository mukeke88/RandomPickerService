package com.mukeke.randompickerservice.service;

import com.mukeke.randompickerservice.mapper.TodoMapper;
import com.mukeke.randompickerservice.model.Todo;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TodoService {
    private final TodoMapper todoMapper;

    public TodoService(TodoMapper todoMapper) {
        this.todoMapper = todoMapper;
    }

    public List<Todo> listAllTodos() {
        return todoMapper.findAll();
    }

    public Todo addTodo(Todo todo) {
        todoMapper.insert(todo);
        return todo;
    }

    public void updateTodo(Todo todo) {
        todoMapper.update(todo);
    }

    public void deleteTodo(int id) {
        todoMapper.deleteById(id);
    }

    public void updateTodoWeight(int id, int weight) {
        todoMapper.updateTodoWeight(id, weight);
    }
}
