package com.enjoytrip.service;

import com.enjoytrip.dao.SidoDAO;
import com.enjoytrip.dao.SidoDAOImpl;
import com.enjoytrip.vo.Sido;
import java.util.List;

public class SidoServiceImpl implements SidoService{

    SidoDAO dao;

    public SidoServiceImpl() {
        this.dao = new SidoDAOImpl();
    }

    @Override
    public List<Sido> getSidos() {
        return dao.getSido();
    }
}
