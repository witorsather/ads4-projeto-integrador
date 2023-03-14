package com.develop.gpp.domain.service;

import com.develop.gpp.domain.entity.ClienteFilialModel;
import com.develop.gpp.domain.repository.ClienteFilialRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ClienteFilialService {

    private final ClienteFilialRepository clienteFilialRepository;



    List<ClienteFilialModel> todosClientes(){


        return clienteFilialRepository.findAll();
    }


}
