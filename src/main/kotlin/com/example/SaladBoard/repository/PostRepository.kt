package com.example.SaladBoard.repository

import com.example.SaladBoard.model.Post
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository

@Repository
interface PostRepository : JpaRepository<Post, Int> {
}
