package com.cloud.clinic.p2p;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

import com.cloud.clinic.model.Clinician;
import com.google.appengine.api.datastore.Key;

/*
 * 
 * Representation of Peer for the cloud. Mainly just getters and setters
 * 
 */

@Entity
public class Peer implements java.io.Serializable{
	
	@Transient
	private static final long serialVersionUID = 1L;
	
	//reference to the clinicians
	private String clinicianID;
	//All the patient IDs the peer should have
	private List<Integer> patientIDs;
	//the Google Channel address that can be used to communicate with it
	private String channelID;
	//The P2P address for other peers to communicate with it
	private String p2pAddress;
	
	@ManyToOne(fetch = FetchType.EAGER)
	private Superpeer sp;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Key id;
	public Peer() {
		
	}
	public Peer(Clinician c, Superpeer sp){
		clinicianID = c.getClinicianID();
		patientIDs = c.getPatientIDs();
		this.sp = sp;
		channelID = clinicianID;
	}

	public String getClinicianID() {
		return clinicianID;
	}

	public void setClinicianID(String clinicianID) {
		this.clinicianID = clinicianID;
	}

	public List<Integer> getPatientIDs() {
		return patientIDs;
	}

	public void setPatientIDs(List<Integer> patientIDs) {
		this.patientIDs = patientIDs;
	}
	
	public boolean addPatientID(Integer pID){
		return this.patientIDs.add(pID);
	}
	
	public boolean removePatientID(Integer pID){
		return this.patientIDs.remove(new Integer(pID));
	}

	public Superpeer getSp() {
		return sp;
	}

	public void setSp(Superpeer sp) {
		this.sp = sp;
	}

	public Key getId() {
		return id;
	}

	public void setId(Key id) {
		this.id = id;
	}

	public String getChannelID() {
		return channelID;
	}

	public void setChannelID(String channelID) {
		this.channelID = channelID;
	}

	public String getP2pAddress() {
		return p2pAddress;
	}

	public void setP2pAddress(String p2pAddress) {
		this.p2pAddress = p2pAddress;
	}
	
	public void retrievePatient(String patientID, Peer origin){
		//Sends channel instruction to peer to send request for patient to origin of change
	}
}
