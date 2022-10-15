package br.com.fiap.abctechapi.service;

import br.com.fiap.abctechapi.model.Order;

import java.util.Collection;
import java.util.List;

public interface OrderService {

    void saveOrder(Order order, List<Long> arrayAssists) throws Exception;
    List<Order> ListOrderByOperator(Long operatorId);

    Collection<Object> listOrderByOperator(Long operatorId);
}
