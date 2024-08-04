package com.rajasekar_t.social_media_app.model;

import java.time.LocalDate;
import java.time.LocalTime;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table
public class Comments {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;

	int postId;
	int userId;
	String content;
	LocalDate commentedDate;
	LocalTime commentedTime;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getPostId() {
		return postId;
	}

	public void setPostId(int postId) {
		this.postId = postId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public LocalDate getCommentedDate() {
		return commentedDate;
	}

	public void setCommentedDate(LocalDate commentedDate) {
		this.commentedDate = commentedDate;
	}

	public LocalTime getCommentedTime() {
		return commentedTime;
	}

	public void setCommentedTime(LocalTime commentedTime) {
		this.commentedTime = commentedTime;
	}

}
