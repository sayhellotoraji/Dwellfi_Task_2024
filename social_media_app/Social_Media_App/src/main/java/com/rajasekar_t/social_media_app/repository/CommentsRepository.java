package com.rajasekar_t.social_media_app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.rajasekar_t.social_media_app.model.Comments;

import io.swagger.v3.oas.annotations.tags.Tag;

@Tag(name = "Comments - Rest API Controllers", description = "Comments Record API")
@RepositoryRestResource(collectionResourceRel = "comments", path = "comments")
public interface CommentsRepository extends JpaRepository<Comments, Integer> {

}
