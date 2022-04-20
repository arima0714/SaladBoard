package com.example.SaladBoard.service

import com.example.SaladBoard.model.Post
import com.example.SaladBoard.repository.PostRepository
import com.example.SaladBoard.request.PostForm
import org.springframework.stereotype.Service

@Service
class PostService(val postRepository: PostRepository) {
    /**
     * 受け取った入力を保存する
     */
    fun savePost(body: PostForm) {
        val entity = Post(body = body.body)
        postRepository.save(entity)
    }
}
