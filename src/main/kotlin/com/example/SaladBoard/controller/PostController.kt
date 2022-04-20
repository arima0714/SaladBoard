package com.example.SaladBoard.controller

import com.example.SaladBoard.request.PostForm
import com.example.SaladBoard.service.PostService
import org.springframework.stereotype.Controller
import org.springframework.ui.Model
import org.springframework.web.bind.annotation.ModelAttribute
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestMethod

@Controller
class PostController(val postService: PostService) {

    /**
     * 投稿画面を返す
     */
    @RequestMapping(value = ["/post"], method = [RequestMethod.GET])
    fun showInputForm(model: Model): String {
        model.addAttribute("postForm", PostForm())
        return "post"
    }

    /**
     * 投稿画面の入力値を受け取る
     */
    @RequestMapping(value = ["/post"], method = [RequestMethod.POST])
    fun receiveInput(@ModelAttribute postForm: PostForm): PostForm {
        postService.savePost(body = postForm)
        return PostForm(body = postForm.body)
    }

    /**
     * 投稿一覧画面を返す
     */
    @RequestMapping(value = ["/home"], method = [RequestMethod.GET])
    fun showAllPosts(model: Model): String {
        model.addAttribute("allPosts", postService.returnAllPosts())
        return "home"
    }
}
