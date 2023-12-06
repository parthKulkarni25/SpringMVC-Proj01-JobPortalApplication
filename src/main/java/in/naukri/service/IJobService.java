package in.naukri.service;

import java.util.List;

import in.naukri.model.Candidate;
import in.naukri.model.Job;

public interface IJobService {
	
	public List<Job> getJobs();
	public void saveJob(Job job);
	public Job getByJobCode(Integer jobCode);
	public void removeJobByJobCode(Integer jobCode);
	public void saveApplication(Candidate candidate);
	public List<Candidate> getCandidateByName(String cname);
	public List<Job> findByCompany(String company);
	public List<Candidate> findByJob(Job job);
}
