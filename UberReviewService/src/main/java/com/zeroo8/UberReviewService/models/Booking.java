package com.zeroo8.UberReviewService.models;

import jakarta.persistence.*;

import java.util.Date;

@Entity
public class Booking extends BaseModel{

    @OneToOne(cascade = {CascadeType.PERSIST, CascadeType.REMOVE})
    private Review review;

    @Enumerated(value = EnumType.STRING)
    private BookingStatus bookingStatus;

    @Temporal(value = TemporalType.TIMESTAMP)
    private Date startTime;

    @Temporal(value = TemporalType.TIMESTAMP)
    private Date endTime;

    private Long totalDistance;

    @ManyToOne
    private Driver driver;

    @ManyToOne
    private Passenger passenger;
}
