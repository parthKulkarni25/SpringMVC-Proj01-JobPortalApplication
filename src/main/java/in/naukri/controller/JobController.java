package in.naukri.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import in.naukri.model.Job;
import in.naukri.service.IJobService;

@Controller
@RequestMapping("/job")
public class JobController {

	@Autowired
	private IJobService service;
	
	@GetMapping("/home")
	public String showHome() {
		
		return "showHome";
	}
	
	@GetMapping("/recruiter")
	public String showRecruiter(@RequestParam String company,Map<String, Object>model) {
		
		List<Job> jobs = service.findByCompany(company);
		//jobs.forEach(System.out::println);
		model.put("jobs", jobs);
		
		
		return "showRecruiter";
	}
	
	@GetMapping("/showJobForm")
	public String showJobForm(Map<String, Object>model) {
		Job job=new Job();
		model.put("job", job);
		return "job-form";
	}
	
	@PostMapping("/saveJob")
	public String showJobForm(@ModelAttribute("job") Job job) {
		System.out.println(job);
		service.saveJob(job);
		
		return "redirect:/job/home";
	}
	
	@GetMapping("/showFormUpdate")
	public String showFormJobUpdate(@RequestParam Integer jobCode,Map<String, Object>model) {
		Job job = service.getByJobCode(jobCode);
		model.put("job", job);
		return "job-form";
	}
	
	@GetMapping("/removeJob")
	public String removeJob(@RequestParam Integer jobCode) {
		service.removeJobByJobCode(jobCode);
		return "redirect:/job/home";
	}
	
	
	
	
}
