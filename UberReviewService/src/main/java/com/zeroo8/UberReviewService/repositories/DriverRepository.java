package com.zeroo8.UberReviewService.repositories;

import com.zeroo8.UberReviewService.models.Driver;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface DriverRepository extends JpaRepository<Driver, Long> {

    Optional<Driver> findByIdAndLicenseNo(Long id, String licenseNo);

    List<Driver> findAllByIdIn(List<Long> driverIds);
}