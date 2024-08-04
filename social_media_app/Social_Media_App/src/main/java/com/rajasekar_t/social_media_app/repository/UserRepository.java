package com.rajasekar_t.social_media_app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.rajasekar_t.social_media_app.model.User;

import io.swagger.v3.oas.annotations.tags.Tag;

@Tag(name = "User - Rest API Controllers", description = "User Record API")
@RepositoryRestResource(collectionResourceRel = "user", path = "user")
public interface UserRepository extends JpaRepository<User, Integer> {

}
