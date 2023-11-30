package com.project.bookrentalappspboot;

import io.swagger.annotations.ApiModelProperty;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
import lombok.*;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Data
public class Registration {

    @ApiModelProperty(notes = "This is unique record Id", name = "Record Id")
    @Id
    @GeneratedValue
    private Long id;

    @ApiModelProperty(notes = "First name of user", name = "first name", required = true)
    @Column(nullable = false)
    @Size(min = 2, max = 30, message
            = "First name must be between 2 and 30 characters")
    private String firstName;

    @ApiModelProperty(notes = "Middle name can be empty", name = "user middle name", required = false)
    @Column(nullable = true)
    private String middleNames;

    @ApiModelProperty(notes = "Surname/last name must be between 2 and 30 characters", name = "surname/last name", required = true)
    @Column(nullable = false)
    @Size(min = 2, max = 30, message
            = "Surnmae must be between 2 and 30 characters")
    private String surName;

//    @Column(nullable = false)
//    private Date dateOfBirth;

    @ApiModelProperty(notes = "Email should be valid", name = "user email", required = true)
    @Column(nullable = false, unique = true)
    @Email(message = "Email should be valid")
    private String email;

    @ApiModelProperty(notes = "User Address 1 must be between 5 and 30 characters", name = "user address 1", required = true)
    @Column(nullable = false)
    @Size(min = 5, max = 30, message
            = "Address 1 must be between 5 and 30 characters")
    private String address1;

    @ApiModelProperty(notes = "User Address 2 must be between 5 and 30 characters", name = "user address 2", required = true)
    @Column(nullable = false)
    @Size(min = 5, max = 30, message
            = "Address 2 must be between 5 and 30 characters")
    private String address2;

    @ApiModelProperty(notes = "User city/town name must be between 5 and 30 characters", name = "user city/town name", required = true)
    @Column(nullable = false)
    @Size(min = 5, max = 30, message
            = "City/Town name must be between 5 and 30 characters")
    private String cityTown;

    @ApiModelProperty(notes = "User postcode (UK) must be between 5 and 30 characters", name = "User postcode (UK)", required = true)
    @Column(nullable = false)
    @Size(min = 6, max = 8, message
            = "Postcode must be between 6 and 8 characters")
    private String postcode;

    @ApiModelProperty(notes = "User password must be at least 8 characters, has a character in UPPERCASE, has a special character from !@#$%^&*()_+\\-=", name = "user password", required = true)
    @Column(nullable = false)
    @NotEmpty
    private String password;

    public Registration(String firstName,
                        String middleNames,
                        String surName,
                        String email,
                        String address1,
                        String address2,
                        String cityTown,
                        String postcode,
                        String password
    ) {
        this.firstName = firstName;
        this.middleNames = middleNames;
        this.surName = surName;
        this.email = email;
        this.address1 = address1;
        this.address2 = address2;
        this.cityTown = cityTown;
        this.postcode = postcode;
        this.password = password;
    }
}
