package com.example.demo

import org.springframework.stereotype.Controller
import org.springframework.ui.Model
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestMethod

@Controller
class PostController {
    @RequestMapping(value = ["/post"], method = [RequestMethod.GET])
    fun index(model: Model): String {
        model.addAttribute("postForm", PostForm())
        return "post"
    }
}