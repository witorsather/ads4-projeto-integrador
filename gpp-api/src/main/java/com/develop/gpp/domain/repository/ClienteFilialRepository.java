package com.develop.gpp.domain.repository;

import com.develop.gpp.domain.entity.ClienteFilialModel;

import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;
import java.util.Optional;

public interface ClienteFilialRepository extends JpaRepository<ClienteFilialModel, Integer> {



    List<ClienteFilialModel> findAll();
}
