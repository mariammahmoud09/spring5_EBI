package org.example.crmrestapi.controller;


import org.example.crmrestapi.entity.Customer;
import org.example.crmrestapi.jpa.CustomerDaoInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/customer")
public class CustomerControllerMVC {

    @Autowired
    private CustomerDaoInterface customerDaoInterface;


    //Adding
    @RequestMapping("/add")
    public String showAddedCustomerForm(Model model) {
        model.addAttribute("customer", new Customer());
        return "insert-customer";
    }

    // confirm Adding
    @RequestMapping("/process-add-customer")
    public String processAddCustomer(@ModelAttribute("customer") Customer customer) {
        customerDaoInterface.save(customer);
        return "insert-confirmation";
    }

    // showAllCustomer
    @GetMapping("/show-all-customers")
    public String showAllCustomerForm(Model model) {
        model.addAttribute("customerList", customerDaoInterface.findAll());
        return "show-all-customer";
    }

    // delete
    @GetMapping("/customer-delete/{id}")
    public String deleteCustomer(@PathVariable int id, @ModelAttribute("customer") Customer customer, Model model) {
        customerDaoInterface.deleteById(customer.getId());
        return showAllCustomerForm(model);
    }

    //update
    @RequestMapping("/customer-update/{id}")
    public String updateCustomer(@PathVariable("id") int id , @ModelAttribute("customer") Customer customer, Model model) {
        model.addAttribute("customer-update", customerDaoInterface.findById(id));
        return "update-customer";
    }
    // confirm updating
    @PostMapping("/process-update-customer/{id}")
    public String processUpdateCustomer(@PathVariable("id") int id , @ModelAttribute("customer-update") Customer customer) {
        customerDaoInterface.save(customer);
        return "update-confirmation";
    }

//    @RequestMapping("/process-update-customer/{id}")
//    public String updateCustomerForm(@ModelAttribute Customer customer) {
//        if (customer.getId() == 0){
//            customerService.insertCustomer(customer);
//        }else {
//            customerService.updateCustomer(customer);
//        }
//        return "redirect:/customer/show-all-customers";
//    }


}
