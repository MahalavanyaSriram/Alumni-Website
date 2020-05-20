package edu.ms.uncc.alumni.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import edu.ms.uncc.alumni.model.Account;


@Repository
public interface AuthenticationRepository extends CrudRepository<Account, String> {

}
