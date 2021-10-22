package com.joshod.intro.models;

public class Post {
    private String title;
    private String body;
    private String user;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public Post(String title, String body){
        this.title = title;
        this.body = body;
    }

}