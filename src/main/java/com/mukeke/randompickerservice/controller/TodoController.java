package com.mukeke.randompickerservice.controller;

import com.mukeke.randompickerservice.model.Todo;
import com.mukeke.randompickerservice.service.TodoService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/todos")
public class TodoController {
    private final TodoService todoService;

    public TodoController(TodoService todoService) {
        this.todoService = todoService;
    }

    @GetMapping
    public List<Todo> getAllTodos() {
        return todoService.listAllTodos();
    }

    @PostMapping
    public ResponseEntity<Todo> addTodo(@RequestBody Todo todo) {
        Todo newTodo = todoService.addTodo(todo);
        return ResponseEntity.ok(newTodo);
    }

    @PutMapping("/{id}")
    public void updateTodo(@PathVariable int id, @RequestBody Todo todo) {
        todo.setId(id);
        todoService.updateTodo(todo);
    }

    @DeleteMapping("/{id}")
    public void deleteTodo(@PathVariable int id) {
        todoService.deleteTodo(id);
    }
}
