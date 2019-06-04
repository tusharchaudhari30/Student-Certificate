package com.campus.dao;

import java.util.List;

import com.campus.model.Certificate;
import com.campus.model.Student;



public interface CertificateDAO {
	public void addCertificate(Certificate u);
	public Certificate getCertificateById(int id);
	public List<Certificate> listCertificate();
	public Long getLCcount();
	public Long getBonafidecount();
}
