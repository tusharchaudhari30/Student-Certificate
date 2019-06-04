package com.campus.service;

import java.util.List;

import com.campus.model.Certificate;


public interface CertificateService 
{
	public void addCertificate(Certificate s);
	public Certificate getCertificateByid(int ref);
	public List<Certificate> listCertificate();
	public Long getLCcount();
	public Long getBonafidecount();

}
