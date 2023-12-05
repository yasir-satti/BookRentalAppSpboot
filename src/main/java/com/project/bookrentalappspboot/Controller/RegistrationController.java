package com.project.bookrentalappspboot.Controller;

import com.project.bookrentalappspboot.Entity.Registration;
import com.project.bookrentalappspboot.Service.RegistrationService;
import io.swagger.annotations.ApiOperation;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import javax.validation.Valid;
import java.util.List;

@RestController
@CrossOrigin(origins = "http://localhost:3000")
//@CrossOrigin(origins = "http://d2s5kr8fysj3pd.cloudfront.net")
@RequestMapping("api/registration")
public class RegistrationController {

    RegistrationService registrationService;

    public RegistrationController(RegistrationService registrationService) {
        this.registrationService = registrationService;
    }

    @ApiOperation(value="Create new user registration", notes = "This endpoint creates a new user registration record in the application database")
    @PostMapping
    public ResponseEntity<Void> createNewRegistration(
            @Valid @RequestBody Registration registration, UriComponentsBuilder uriComponentsBuilder) {
        Long id = registrationService.createNewRegistration(registration);

        System.out.println("id...." + id.toString());


        UriComponents uriComponents = uriComponentsBuilder.path("api/registration/{id}").buildAndExpand(id);
        HttpHeaders headers = new HttpHeaders();
        headers.setLocation(uriComponents.toUri());

        ResponseEntity<Void> response = new ResponseEntity<>(headers, HttpStatus.CREATED);

        System.out.println("Create new responseEntity....");
        System.out.println(response);

        return response;
    }

    @ApiOperation(value="Get all usres registration records", notes = "This endpoint gets all users registration records in the application database")
    @GetMapping
    public ResponseEntity<List<Registration>> getAllRegistrations() {
        ResponseEntity<List<Registration>> response = ResponseEntity.ok(registrationService.getAllRegistrations());

        System.out.println("get All responseEntity....");
        System.out.println(response);

        return response;
    }

    @ApiOperation(value="Get registration record for a specific user", notes = "This endpoint gets a user registration record for a specified user from the application database")
    @GetMapping("/{id}")
    public ResponseEntity<Registration> getRegistrationById(
            @PathVariable("id") Long id) {

        ResponseEntity<Registration> response =  ResponseEntity.ok(registrationService.getRegistrationById(id));

        System.out.println("get by Id responseEntity....");
        System.out.println(response);

        return response;
    }

    @ApiOperation(value="Update registration record for a specific user", notes = "This endpoint updates a user registration record for a specified user in the application database")
    @PutMapping("/{id}")
    public ResponseEntity<Long> updateRegistration(
        @PathVariable("id") Long id, @Valid @RequestBody Registration registration) {

        ResponseEntity<Long> response = ResponseEntity.ok(registrationService.updateRegistration(id, registration));

        System.out.println("update by Id responseEntity....");
        System.out.println(response);

        return response;

    };

    @ApiOperation(value="Delete registration record for a specific user", notes = "This endpoint deletes a user registration record for a specified user from the application database")
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteRegistration(
            @PathVariable("id") Long id) {
        registrationService.deleteRegistrationById(id);

        ResponseEntity<Void> response =  ResponseEntity.ok().build();

        System.out.println("delete by Id responseEntity....");
        System.out.println(response);

        return response;
    }
}
