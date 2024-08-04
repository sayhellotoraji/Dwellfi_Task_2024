package com.rajasekar_t.social_media_app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.rajasekar_t.social_media_app.model.Message;

import io.swagger.v3.oas.annotations.tags.Tag;

@Tag(name = "Message - Rest API Controllers", description = "Message Record API")
@RepositoryRestResource(collectionResourceRel = "message", path = "message")
public interface MessageRepository extends JpaRepository<Message, Integer> {

}
