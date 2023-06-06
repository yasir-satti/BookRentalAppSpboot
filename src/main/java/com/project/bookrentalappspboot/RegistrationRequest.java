package com.project.bookrentalappspboot;

import io.swagger.annotations.ApiModelProperty;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;
import lombok.Data;


@Data
public class RegistrationRequest {

    @ApiModelProperty(notes = "First name must be between 2 and 30 characters", name = "user first name", required = true)
    @Size(min = 2, max = 30, message
            = "First name must be between 2 and 30 characters")
    private String firstName;

    @ApiModelProperty(notes = "Middle name can be empty", name = "user middle name", required = false)
    private String middleNames;

    @ApiModelProperty(notes = "Surname/last name must be between 2 and 30 characters", name = "surname/last name", required = true)
    @Size(min = 2, max = 30, message
            = "Surnmae must be between 2 and 30 characters")
    private String surName;

//    private Date dateOfBirth;

    @ApiModelProperty(notes = "Email should be valid", name = "user email", required = true)
    @Email(message = "Email should be valid")
    private String email;

    @ApiModelProperty(notes = "User Address 1 must be between 5 and 30 characters", name = "user address 1", required = true)
    @Size(min = 5, max = 30, message
            = "Address 1 must be between 5 and 30 characters")
    private String address1;

    @ApiModelProperty(notes = "User Address 2 must be between 5 and 30 characters", name = "user address 2", required = true)
    @Size(min = 5, max = 30, message
            = "Address 2 must be between 5 and 30 characters")
    private String address2;

    @ApiModelProperty(notes = "User city/town name must be between 5 and 30 characters", name = "user city/town name", required = true)
    @Size(min = 5, max = 30, message
            = "City/Town name must be between 5 and 30 characters")
    private String cityTown;

    @ApiModelProperty(notes = "User postcode (UK) must be between 5 and 30 characters", name = "User postcode (UK)", required = true)
    @Size(min = 6, max = 8, message
            = "Postcode must be between 6 and 8 characters")
    private String postcode;

    @ApiModelProperty(notes = "User password must be at least 8 characters, has a character in UPPERCASE, has a special character from !@#$%^&*()_+\\-=", name = "user password", required = true)
    @NotEmpty
    private String password;
}
