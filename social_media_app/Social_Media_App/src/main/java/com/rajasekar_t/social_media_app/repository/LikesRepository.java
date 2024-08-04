package com.rajasekar_t.social_media_app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.rajasekar_t.social_media_app.model.Likes;

import io.swagger.v3.oas.annotations.tags.Tag;

@Tag(name = "Likes - Rest API Controllers", description = "Likes Record API")
@RepositoryRestResource(collectionResourceRel = "likes", path = "likes")
public interface LikesRepository extends JpaRepository<Likes, Integer> {

}
