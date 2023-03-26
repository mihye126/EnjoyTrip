package com.enjoytrip.controller;

import com.enjoytrip.service.SidoService;
import com.enjoytrip.service.SidoServiceImpl;
import com.enjoytrip.vo.Sido;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SidoController {

    SidoService service;

    public SidoController() {
        service=new SidoServiceImpl();
    }


}
