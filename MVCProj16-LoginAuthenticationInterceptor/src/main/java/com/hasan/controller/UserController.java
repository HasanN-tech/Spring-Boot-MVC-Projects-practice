package com.hasan.controller;

import jakarta.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class UserController {

    @GetMapping("/login")
    public String showLogin() {

        return "login";
    }

    @PostMapping("/login")
    public String login(
            @RequestParam String username,
            @RequestParam String password,
            HttpSession session,
            Model model) {

        if(username.equals("admin")
                &&
           password.equals("admin123")) {

            session.setAttribute(
                    "user",
                    username);

            return "redirect:/profile";
        }

        model.addAttribute(
                "msg",
                "Invalid Credentials");

        return "login";
    }

    @GetMapping("/profile")
    public String profile() {

        return "profile";
    }

    @GetMapping("/logout")
    public String logout(
            HttpSession session) {

        session.invalidate();

        return "redirect:/login";
    }
}