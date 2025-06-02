package com.zeroo8.UberReviewService.adapters;

import com.zeroo8.UberReviewService.dto.CreateReviewDto;
import com.zeroo8.UberReviewService.models.Review;

public interface CreateReviewDtoToReviewAdapter {

    public Review convertDto(CreateReviewDto createReviewDto);
}