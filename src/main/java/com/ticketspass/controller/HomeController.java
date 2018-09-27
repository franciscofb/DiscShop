package com.ticketspass.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by FFB on 09/05/2018.
 */

@Controller
public class HomeController {

    @RequestMapping("/")
    public String home() {
        return "home";
    }

    @RequestMapping("/login")
    public String login(@RequestParam(value="error", required = false) String error, @RequestParam(value="logout",
            required = false) String logout, Model model) {
        if (error!=null) {
            model.addAttribute("error", "Usuário ou senha inválidos");
        }

        if(logout!=null) {
            model.addAttribute("msg", "Você fez logout com sucesso");
        }

        return "login";
    }

    @RequestMapping("/about")
    public String about() {
        return "about";
    }
}
