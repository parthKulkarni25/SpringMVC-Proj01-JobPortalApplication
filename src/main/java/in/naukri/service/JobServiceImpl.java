package in.naukri.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.naukri.dao.ICandidateDao;
import in.naukri.dao.IJobDAO;
import in.naukri.model.Candidate;
import in.naukri.model.Job;

@Service
public class JobServiceImpl implements IJobService {
	
	@Autowired
	private IJobDAO dao;
	
	@Autowired
	private ICandidateDao repo;

	@Override
	public List<Job> getJobs() {
		
		return dao.findAll();
	}

	@Override
	public void saveJob(Job job) {
		
		dao.save(job);
		
	}

	@Override
	public Job getByJobCode(Integer jobCode) {
		Optional<Job> optional= dao.findById(jobCode);
		
		return optional.get();
	}

	@Override
	public void removeJobByJobCode(Integer jobCode) {
		dao.deleteById(jobCode);
		
	}

	@Override
	public void saveApplication(Candidate candidate) {
		repo.save(candidate);
		
	}

	@Override
	public List<Candidate> getCandidateByName(String cname) {
		
		return repo.findByCname(cname);
	}

	@Override
	public List<Job> findByCompany(String company) {
		// TODO Auto-generated method stub
		return dao.findByCompany(company);
	}

	@Override
	public List<Candidate> findByJob(Job job) {
		
		return repo.findByJob(job);
	}

	
	
	
	
}
