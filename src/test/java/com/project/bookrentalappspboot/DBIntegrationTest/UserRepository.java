package com.project.bookrentalappspboot.DBIntegrationTest;

import com.project.bookrentalappspboot.Registration;
import org.springframework.data.repository.ListCrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends ListCrudRepository<Registration, Long> {
}
