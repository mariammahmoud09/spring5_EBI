package org.example.crmrestapi.jpa;

import org.example.crmrestapi.entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerDaoInterface extends JpaRepository<Customer, Integer> {

//    public Customer findByFirstName(String firstName);
//    public Customer findByFirstNameOrLastName(String firstName, String lastName);
//
//    @Query("FROM Customer where firstName LIKE ?1")
//    public List<Customer> findCustomersLikeName(String lastName);

}
