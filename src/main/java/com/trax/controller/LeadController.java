package com.trax.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.trax.entities.Lead;
import com.trax.services.LeadService;

@Controller
public class LeadController {
	
	@RequestMapping("/viewCreateLead")
	public String viewCreateLeadPage() {
		return "create_lead";
	}
	
	@Autowired
	private LeadService leadService;
	
	
	@RequestMapping(value = "/saveLead", method=RequestMethod.POST)
	public String saveLead(@ModelAttribute("lead") Lead lead, ModelMap model) {
		try {
			leadService.saveLeadInfo(lead);
			model.addAttribute("lead", lead);
		} catch (Exception e) {
			model.addAttribute("emailError", "this email Id exist");
			return "create_lead";
		}
		return "lead_info";
	}
	
	@RequestMapping("/composeEmail")
	public String composeEmail(@RequestParam("email") String email, ModelMap model) {
		model.addAttribute("email", email);
		return "compose_email";
	}
	
	@RequestMapping("/listall")
	public String listAllLeads(ModelMap model) {
		List<Lead> leads = leadService.getAllLeads();
		model.addAttribute("leads", leads);
		
		return "lead_search_result";
		
	}
	
	@RequestMapping("/leadInfo")
	public String leadInfo(
			@RequestParam("id") long id, ModelMap model
			) {
		
		Lead lead = leadService.findLeadByid(id);
		model.addAttribute("lead", lead);
		return "lead_info";
	}
	
	@RequestMapping("/delete")
	public String delete(@RequestParam("id") long id, ModelMap model) {
		leadService.deleteByLead(id);
		List<Lead> leads = leadService.getAllLeads();
		model.addAttribute("leads", leads);
		return "lead_search_result";
	}
	
}
