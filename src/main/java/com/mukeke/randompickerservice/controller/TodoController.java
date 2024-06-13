package com.mukeke.randompickerservice.controller;

import com.mukeke.randompickerservice.model.Todo;
import com.mukeke.randompickerservice.service.KafkaProducerService;
import com.mukeke.randompickerservice.service.TodoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/todos")
public class TodoController {
    private final TodoService todoService;

    @Autowired
    private KafkaProducerService kafkaProducerService;

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
        kafkaProducerService.sendMessage("randomPicker-actions", "Added item: " + todo.getText());
        return ResponseEntity.ok(newTodo);
    }

    @PutMapping("/{id}")
    public void updateTodo(@PathVariable int id, @RequestBody Todo todo) {
        todo.setId(id);
        todoService.updateTodo(todo);
        kafkaProducerService.sendMessage("randomPicker-actions", "Edited item: " + todo.getText());
    }

    @DeleteMapping("/{id}")
    public void deleteTodo(@PathVariable int id) {
        todoService.deleteTodo(id);
        kafkaProducerService.sendMessage("randomPicker-actions", "Deleted item: " + id);

    }

    @PatchMapping("/{id}/weight")
    public void updateTodoWeight(@PathVariable int id, @RequestBody Map<String, Integer> weight) {
        todoService.updateTodoWeight(id, weight.get("weight"));
        kafkaProducerService.sendMessage("randomPicker-actions", "Edit weight of item: " + id);
    }
}
