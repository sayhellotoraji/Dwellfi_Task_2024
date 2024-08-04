package com.rajasekar_t.social_media_app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.rajasekar_t.social_media_app.model.Post;

import io.swagger.v3.oas.annotations.tags.Tag;

@Tag(name = "Posts - Rest API Controllers", description = "Posts Record API")
@RepositoryRestResource(collectionResourceRel = "post", path = "post")
public interface PostRepository extends JpaRepository<Post, Integer> {

}
