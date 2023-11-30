package com.project.bookrentalappspboot.DBIntegrationTest;

import com.project.bookrentalappspboot.Registration;
import org.springframework.data.repository.ListCrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepository extends ListCrudRepository<Registration, Long> {
    void deleteAll();

    List<Registration> findAll();
}
