
CREATE TABLE booking_review (
                                id BIGINT AUTO_INCREMENT NOT NULL,
                                content VARCHAR(255) NOT NULL,
                                rating DOUBLE,
                                created_at DATETIME NOT NULL,
                                updated_at DATETIME NOT NULL,
                                PRIMARY KEY (id)
);

CREATE TABLE passenger_review (
                                  id BIGINT NOT NULL,
                                  passenger_review_content VARCHAR(255),
                                  passeger_rating VARCHAR(255),
                                  PRIMARY KEY (id),
                                  CONSTRAINT FK_PASSENGER_REVIEW_ON_REVIEW FOREIGN KEY (id) REFERENCES booking_review (id)
);

CREATE TABLE driver (
                        id BIGINT AUTO_INCREMENT NOT NULL,
                        name VARCHAR(255),
                        license_no VARCHAR(255) NOT NULL UNIQUE,
                        created_at DATETIME NOT NULL,
                        updated_at DATETIME NOT NULL,
                        PRIMARY KEY (id)
);

CREATE TABLE passenger (
                           id BIGINT AUTO_INCREMENT NOT NULL,
                           name VARCHAR(255),
                           created_at DATETIME NOT NULL,
                           updated_at DATETIME NOT NULL,
                           PRIMARY KEY (id)
);

CREATE TABLE booking (
                         id BIGINT AUTO_INCREMENT NOT NULL,
                         created_at DATETIME NOT NULL,
                         updated_at DATETIME NOT NULL,
                         review_id BIGINT,
                         booking_status ENUM('SCHEDULED', 'CANCELLED', 'CAB_ARRIVED', 'ASSIGNING_DRIVER', 'IN_RIDE', 'COMPLETED'),
                         start_time DATETIME,
                         end_time DATETIME,
                         total_distance BIGINT,
                         driver_id BIGINT,
                         passenger_id BIGINT,
                         PRIMARY KEY (id),
                         CONSTRAINT FK_BOOKING_ON_DRIVER FOREIGN KEY (driver_id) REFERENCES driver (id),
                         CONSTRAINT FK_BOOKING_ON_PASSENGER FOREIGN KEY (passenger_id) REFERENCES passenger (id),
                         CONSTRAINT FK_BOOKING_ON_REVIEW FOREIGN KEY (review_id) REFERENCES booking_review (id)
);
