package com.trax.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.trax.entities.Billing;
import com.trax.entities.Contact;
import com.trax.repositories.BillingRepository;
@Service
public class BillingServiceImpl implements BillingService {

	@Autowired
	private BillingRepository billRepo;

	@Override
	public void saveBill(Billing bill) {
		billRepo.save(bill);
		
	}

	@Override
	public List<Billing> getAllBillings() {
		List<Billing> billings = billRepo.findAll();
		return billings;
	}

	
	
	

}
