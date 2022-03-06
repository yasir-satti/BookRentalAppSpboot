package com.project.bookrentalappspboot;

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
@RequestMapping("api/registration")
public class RegistrationController {

    RegistrationService registrationService;

    public RegistrationController(RegistrationService registrationService) {
        this.registrationService = registrationService;
    }

    @PostMapping
    public ResponseEntity<Void> createNewRegistration(
            @Valid @RequestBody RegistrationRequest registrationRequest, UriComponentsBuilder uriComponentsBuilder) {
        Long id = registrationService.createNewRegistration(registrationRequest);

        UriComponents uriComponents = uriComponentsBuilder.path("api/registration/{id}").buildAndExpand(id);
        HttpHeaders headers = new HttpHeaders();
        headers.setLocation(uriComponents.toUri());

        return new ResponseEntity<>(headers, HttpStatus.CREATED);
    }

    @GetMapping
    public ResponseEntity<List<Registration>> getAllRegistrations() {
        return ResponseEntity.ok(registrationService.getAllRegistrations());
    }

    @GetMapping("/{id}")
    public ResponseEntity<Registration> getRegistrationById(
            @PathVariable("id") Long id) {
        return ResponseEntity.ok(registrationService.getRegistrationById(id));
    }

    @PutMapping("/{id}")
    public ResponseEntity<Long> updateRegistration(
        @PathVariable("id") Long id, @Valid @RequestBody RegistrationRequest registrationRequest) {
        return ResponseEntity.ok(registrationService.updateRegistration(id, registrationRequest));
    }
    //    public ResponseEntity<Long> updateRegistration(


    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteRegistration(
            @PathVariable("id") Long id) {
        registrationService.deleteRegistrationById(id);
        return ResponseEntity.ok().build();
    }
}
