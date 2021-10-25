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
    private String summary;
    private String body;
    @Column(name="created_at")
    private Date createdAt;
    
    public Long getId(){
        return id;
    }
    
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
        return new SimpleDateFormat("MMMM d, y").format(createdAt);
    }
    
    public String imageMax(){
        return "max-" + image;
    }
    
    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }
    
    
    public Post(){
        
    }

    public Post(Long id, String image, String title, String summary, String body){
        this.id = id;
        this.image = image;
        this.title = title;
        this.summary = summary;
        this.body = body;
    }

}