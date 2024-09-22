package com.loum.ecommerce.exception;

import lombok.EqualsAndHashCode;
import lombok.*;

@EqualsAndHashCode(callSuper = true)
@Data
public class CustomerNotFoundException extends RuntimeException {

    private final String message;
}
