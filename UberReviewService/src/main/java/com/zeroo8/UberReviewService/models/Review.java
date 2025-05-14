package com.zeroo8.UberReviewService.models;


import jakarta.persistence.*;
import lombok.*;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;

import java.util.Date;

@Setter
@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "bookingreview")
public class Review extends BaseModel {


    @Column(nullable = false)
    String content;
    Double rating;

    public String toString(){
        return "Review " + this.content + " " + this.rating + " " + this.createdAt;
    }



}
