package com.develop.authentication_api.domain.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.develop.authentication_api.domain.entity.Task;

public interface TaskRepository extends JpaRepository<Task, Long> {

    List<Task> findAllByUsername(String username);
    
    Optional<Task> findByIdAndUsername(Long id, String username);
}
