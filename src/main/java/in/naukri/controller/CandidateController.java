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

import in.naukri.model.Candidate;
import in.naukri.model.Job;
import in.naukri.service.IJobService;

@Controller
@RequestMapping("/candidate")
public class CandidateController {

	@Autowired
	private IJobService service;
	
	@GetMapping("/listCandidate")
	public String showCandidates(Map<String, Object>model) {
		List<Job> jobs = service.getJobs();
		//jobs.forEach(System.out::println);
		model.put("jobs", jobs);
		return "showCandidate";
	}
	
	@PostMapping("/applyJob")
	public String applyJobForCandidate(@ModelAttribute("candidate") Candidate candidate) {
		
		System.out.println(candidate);
		service.saveApplication(candidate);
		
		return "success";
	}
	
	@GetMapping("/showApplication")
	public String showApplication(@RequestParam Integer jobCode,Map<String, Object>model) {
		Job job = service.getByJobCode(jobCode);
		//System.out.println(";;"+job);
		Candidate candidate = new Candidate();
		candidate.setJob(job);
		model.put("candidate", candidate);
		return "job-application";
	}
	
	@GetMapping("/showMyApplication")
	public String getCandidateByName(@RequestParam("cname") String cname,Map<String, Object>model) {
		List<Candidate> candidates = service.getCandidateByName(cname);
		//candidates.forEach(System.out::println);
		model.put("candidates", candidates);
		return "get-Applications";
	}
	
	@GetMapping("/showApplications")
	public String showApplications(@RequestParam String company,@RequestParam Integer jobCode,@RequestParam String jobProfile,@RequestParam Integer availableSeats,@RequestParam Integer experience,@RequestParam Float salary,Map<String, Object>model) {
		Job job = new Job();
		job.setJobCode(jobCode);
		job.setCompany(company);
		job.setAvailableSeats(availableSeats);
		job.setExperience(experience);
		job.setJobProfile(jobProfile);
		job.setSalary(salary);
		System.out.println("job is "+job);
		List<Candidate> candidates= service.findByJob(job);
		//candidates.forEach(System.out::println);
		model.put("candidates", candidates);
		
		return "getRecruitorApplications";
	}
}
