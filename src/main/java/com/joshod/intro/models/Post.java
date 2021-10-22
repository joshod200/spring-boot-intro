package com.joshod.intro.models;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import javax.persistence.*;

@Entity
@Table(name = "posts")
public class Post {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String image;
    private String title;
    private String body;
    private Date created_at;
    
    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

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

    public String date(){
        return new SimpleDateFormat("MMMM d, y").format(created_at);
    }
    
    public Post(){
        
    }

    public Post(Long id, String image, String title, String body){
        this.id = id;
        this.image = image;
        this.title = title;
        this.body = body;
        this.created_at = Calendar.getInstance().getTime();
    }

}