package com.project.bookrentalappspboot;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class RegistrationService {

    RegistrationMapper registrationMapper;

    public RegistrationService(RegistrationMapper registrationMapper) {

        this.registrationMapper = registrationMapper;
    }

    public long createNewRegistration(Registration registration) {
        return registrationMapper.insert(registration);
    }

    public List<Registration> getAllRegistrations() {

        return registrationMapper.findAll();
    }

    public Registration getRegistrationById(Long id) {

        Optional<Registration> requestedRegistration = Optional.ofNullable(registrationMapper.findById(id));

        if(requestedRegistration.isEmpty()) {
            throw new RegistrationNotFoundException(String.format("Registration with id: '%s' not found", id));
        }

        return requestedRegistration.get();
    }

    public Long updateRegistration(Long id, Registration registrationToUpdate) {

        Optional<Registration> registrationFromDatabase = Optional.ofNullable(registrationMapper.findById(id));

        if(registrationFromDatabase.isEmpty()) {
            throw new RegistrationNotFoundException(String.format("Registration with id: '%s' not found", id));
        }

//        Registration registrationToUpdate = registrationFromDatabase.get();
//
//        registrationToUpdate.setFirstName(registrationToUpdate.getFirstName());
//        registrationToUpdate.setMiddleNames(registrationToUpdate.getMiddleNames());
//        registrationToUpdate.setSurName(registrationToUpdate.getSurName());
//        registrationToUpdate.setEmail(registrationToUpdate.getEmail());
//        registrationToUpdate.setAddress1(registrationToUpdate.getAddress1());
//        registrationToUpdate.setAddress2(registrationToUpdate.getAddress2());
//        registrationToUpdate.setCityTown(registrationToUpdate.getCityTown());
//        registrationToUpdate.setPostcode(registrationToUpdate.getPostcode());
//        registrationToUpdate.setPassword(registrationToUpdate.getPassword());

//        return registrationRepository.save(registrationToUpdate);
        return registrationMapper.update(registrationToUpdate);
    }

    public void deleteRegistrationById(Long id) {

        registrationMapper.deleteById(id);
    }
}
