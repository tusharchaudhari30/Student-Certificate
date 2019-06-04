package com.campus.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.campus.dao.CertificateDAO;
import com.campus.model.Certificate;



@Service
public class CertificateServiceImpl implements CertificateService{
private CertificateDAO certificateDAO;
	
	public void setCertificateDAO(CertificateDAO certificateDAO)
	{
		this.certificateDAO=certificateDAO;
	}

	@Override
	@Transactional
	public void addCertificate(Certificate s) {
		this.certificateDAO.addCertificate(s);
		
	}

	@Override
	@Transactional
	public Certificate getCertificateByid(int ref) {
		return this.certificateDAO.getCertificateById(ref);
	}
	
	@Override
	@Transactional
	public List<Certificate> listCertificate()
	{
		return this.certificateDAO.listCertificate();
	}

	@Override
	@Transactional
	public Long getLCcount() {
		
		return this.certificateDAO.getLCcount();
	}

	@Override
	@Transactional
	public Long getBonafidecount() {
		// TODO Auto-generated method stub
		return this.certificateDAO.getBonafidecount();
	}
	
	
	

}
