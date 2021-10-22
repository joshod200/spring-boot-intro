package com.joshod.intro.models;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Post {
    private String image;
    private String title;
    private String body;
    private String user;

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    private Date created_at;

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

    public String date(){
        return new SimpleDateFormat("MMMM d, y").format(created_at);
    }

    public Post(String image, String title, String body){
        this.image = image;
        this.title = title;
        this.body = body;
        this.created_at = Calendar.getInstance().getTime();
    }

}