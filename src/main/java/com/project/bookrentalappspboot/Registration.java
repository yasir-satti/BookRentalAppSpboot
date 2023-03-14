package com.project.bookrentalappspboot;

import io.swagger.annotations.ApiModelProperty;
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
    private String firstName;

    @ApiModelProperty(notes = "Middle name of user", name = "middle name")
    @Column(nullable = true)
    private String middleNames;

    @ApiModelProperty(notes = "Surname/last name of user", name = "surnmae/last name", required = true)
    @Column(nullable = false)
    private String surName;

//    @Column(nullable = false)
//    private Date dateOfBirth;

    @ApiModelProperty(notes = "email of user", name = "user email", required = true)
    @Column(nullable = false, unique = true)
    private String email;

    @ApiModelProperty(notes = "user address 1", name = "user address 1", required = true)
    @Column(nullable = false)
    private String address1;

    @ApiModelProperty(notes = "user address 2", name = "user address 2", required = true)
    @Column(nullable = false)
    private String address2;

    @ApiModelProperty(notes = "user city/town", name = "user city/town", required = true)
    @Column(nullable = false)
    private String cityTown;

    @ApiModelProperty(notes = "user postcode (UK)", name = "user postcode (UK)", required = true)
    @Column(nullable = false)
    private String postcode;

    @ApiModelProperty(notes = "user password", name = "user password", required = true)
    @Column(nullable = false)
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
