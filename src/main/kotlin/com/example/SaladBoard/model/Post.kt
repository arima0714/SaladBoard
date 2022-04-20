package com.example.SaladBoard.model

import java.io.Serializable
import java.time.LocalDateTime
import javax.persistence.*

@Entity
@Table(name = "posts")
class Post(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "post_id", nullable = true, updatable = false)
    var postId: Int? = 1,

    @Column(name = "user_id", nullable = false, updatable = false)
    var userId: Int = 1,

    @Column(name = "body", nullable = false, updatable = false)
    var body: String = "",

    @Column(name = "posted_at", nullable = true, updatable = false, insertable = false)
    var postedAt: LocalDateTime? = null
) : Serializable
