package com.cloud.clinic.view;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;
import java.util.Locale;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cloud.clinic.model.BeanPopulate;
import com.cloud.clinic.model.Clinic;
import com.cloud.clinic.model.Clinician;
import com.cloud.clinic.model.ClinicianDAO;
import com.cloud.clinic.model.Form;
import com.cloud.clinic.model.Patient;
import com.cloud.clinic.model.PatientDAO;
import com.cloud.clinic.model.PersonalDetails;
import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;
import com.google.appengine.labs.repackaged.org.json.JSONObject;


@SuppressWarnings("serial")
public class PatDetailsServlet extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		UserService service = UserServiceFactory.getUserService();
		User user = service.getCurrentUser();
		
		ClinicianDAO cDAO = new ClinicianDAO();
		Clinician cl = cDAO.get(user.getUserId());
		Clinic clinic = cDAO.getClinic(cl);
		
		Integer thePatientID = Integer.parseInt(req.getParameter("hiddenID"));
		PersonalDetails details = new PersonalDetails();
		BeanPopulate.populateBean(details, req);
		details.setSenior_cert_education(req.getParameter("senior_cert_education"));
		if(req.getParameter("third_check") != null)
			details.setThird_check(req.getParameter("third_check").equals("on"));
		if(req.getParameter("wants_assessment") != null)
			details.setWants_assessment(req.getParameter("wants_assessment").equalsIgnoreCase("true"));
		if(req.getParameter("wants_reassurance") != null)
			details.setWants_reassurance(req.getParameter("wants_reassurance").equalsIgnoreCase("true"));
		if(req.getParameter("wants_information") != null)
			details.setWants_information(req.getParameter("wants_information").equalsIgnoreCase("true"));
		
		
		details.setGender(req.getParameter("gender"));
		String dateStr = req.getParameter("dob");
		
		
		String case_number = req.getParameter("case_number");
		Date ass = new Date();
		Object  assessment = req.getParameter("dateassessment");
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MMMM/yyyy", Locale.ENGLISH);
		//	ass = sdf.parse(assessment);
			Date date = sdf.parse(dateStr);
			details.setDob(date);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		PatientDAO dao = new PatientDAO();		
		Patient pat = dao.get(thePatientID);
		
		
		if(pat != null){
			Calendar cAss = Calendar.getInstance();
			cAss.setTime(ass);
			Form f = dao.getTodaysForm(pat);
			if(f.isNew()){
				
				f.setTimestamp(cAss);
				pat.addForm(f);
				if(f.getPersonalDetails() != null)
					details.setDetailsID(f.getPersonalDetails().getDetailsID());
			}
			f.setCase_number(case_number);
			details.setForm(f);
			if(f.getPersonalDetails() != null)
				details.setDetailsID(f.getPersonalDetails().getDetailsID());
			f.setPersonalDetails(details);
			List<Form> fList =  pat.getForms();
			for(int i = 0; i < fList.size(); i++){
				Calendar c = fList.get(i).getTimestamp();
				if(c.get(Calendar.YEAR) == f.getTimestamp().get(Calendar.YEAR)
						&& c.get(Calendar.MONTH) == f.getTimestamp().get(Calendar.MONTH)
						&& c.get(Calendar.DAY_OF_MONTH) == f.getTimestamp().get(Calendar.DAY_OF_MONTH))
				{
					fList.set(i, f);
					break;
				}
			}
			pat.setForms(fList);
			dao.update(pat);	
		} else {
			pat = new Patient();
			pat.setPatientID(thePatientID);
			pat.setClinic(clinic);
			pat.setClinician(cl);
			Form f = new Form();
			f.setPatient(pat);
			Calendar c = Calendar.getInstance();
			c.setTime(ass);
			f.setCase_number(case_number);
			f.setTimestamp(c);			

			f.setPersonalDetails(details);
			details.setForm(f);
			pat.addForm(f);
			dao.create(pat);
		}
		
		String page = req.getParameter("linkedPage");
		if(page == null || page.equals(" ")){
			req.setAttribute("error", "Could not redirect to page!");
			RequestDispatcher view = req.getRequestDispatcher("/admin/Error.jsp");
			view.forward(req, resp);
			return;
		} else if(page.equals("update")){
			return;
		}
		req.setAttribute("id", thePatientID);
		req.setAttribute("patient", new JSONObject(pat));
		req. setAttribute("dateassessment", assessment);
		RequestDispatcher view = req.getRequestDispatcher("/patientform/"+page+".jsp");
		view.forward(req, resp);		
	}
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException
	{
		doPost(req, resp);
	}
}