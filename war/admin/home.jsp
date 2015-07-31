<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Clinic on the Cloud</title>
<link rel="stylesheet" href="/css/page-style.css" type="text/css"/>
<link rel="stylesheet" href="/css/pure_grid.css" type="text/css"/>  
<link rel="stylesheet" href="/css/pure-min.css"/> 
<link rel="stylesheet" href="/css/home.css"/> 
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
</head>
<body>
<div id="navbar">
<h2>Welcome to Clinic on the Cloud</h2>
</div>

<div id="content">

	<div id="open_message">Would you like to...</div>
	
	<div style="width:120px">
	<a href="/patientform/personal_details.jsp">Add A Patient</a>
	</div>
	<input type="button" value="See All Stored Patients" onclick="revealSeeAllDiv(this)" class="home_button">
	<div id="see_all_div" style="display:none" class="reveal_div">
		<div id="search_bar">
			<form class="pure-form pure-form-stacked">
				<div class="pure-control-group">
					Search for Patient by Name:
				</div>
				<div class="pure-control-group">
					<label for="search_name">Name:</label>
					<input type="text" id="search_name">
				</div>
				<input type="button" value="Search" onclick="searchPatient()" id="search_seeall_btn">
			</form>
		</div>
		
		<div id="patient_grid">
		
		</div>
		
		<div id="patient_entry" style="display:none;margin-bottom:8px;">
			<form class="pure-form pure-form-stacked" id="review" method="GET" action="/review.do">
				<div class="pure-control-group">
					<label for="name">Name:</label>
					<input type="text" id="name" readonly>
				</div>
				<div class="pure-control-group">
					<label for="dob">Date of Birth:</label>
					<input type="text" id="dob" readonly>
				</div>
				<div class="pure-control-group">
					<input type="Submit" value="Get More Info">
					<input type="button" value="Delete" onclick="deleteThisPatient(this)">
					<span id="message"></span>
				</div>
				<input type="hidden" id="id" name="id"/>
				<input type="hidden" name="page" value="SETUP"/>			
			</form>
		</div>
	</div>
	<input type="button" value="Find Patient" onclick="revealFindPatientDiv(this)" class="home_button">
	<div id="find_patient_div">
		<form class="hide_div pure-form pure-form-aligned small-form" id="find_patient">
			<div class="pure-control-group">
				<label for="name">Name:</label>
				<input type="text" id="name">
			</div>
			<div class="pure-control-group">
				<label for="dob_find">Date of Birth:</label>
				<input type="text" id="dob_find" placeholder="dd/mm/yyyy" class="pickdate" name="dob">
			</div>
			<div class="pure-control-group">
				<input type="button" value="Search" onclick="makePatientRequest()">
				<span id="search_status"></span>
			</div>			
		</form>
		<form class="pure-form pure-form-stacked" id="find_patient_result" style="display:none" method="GET" action="/review.do">
			<div class="pure-control-group">
				<label for="name">Name:</label>
				<input type="text" id="name" name="name" readonly>
			</div>
			<div class="pure-control-group">
				<label for="dob">Date of Birth:</label>
				<input type="text" id="dob" name="dob" readonly>
			</div>
			<div  class="pure-control-group">
				<label for="address">Address: </label>
				<textarea rows="4" id="address" readonly></textarea>
			</div>
			<div  class="pure-control-group">
				<label for="home_tel">Home Telephone Number: </label>
				<input type="text" id="home_number" readonly>
			</div>
			
			<div  class="pure-control-group">
				<label for="mob_number">Mobile Phone Number: </label>
				<input type="text" id="mob_number" readonly>
			</div>
			
			<div  class="pure-control-group">
				<label for="email">Email: </label>
				<input type="email" id="email" class="nocap" readonly>
			</div>
			<input id="id" type="hidden" name="p_id">
			<div class="pure-control-group" id="button">
				<input type="submit" value="See More Info">
			</div>
			<div class="pure-control-group" id="button">
				<input type="button" value="Hide Info" onclick="hideResult()">
			</div>
		</form>
	</div>
	<input type="button" value="Review Patient" onclick="revealReviewDiv(this)" class="home_button">
	<form class="hide_div pure-form pure-form-aligned small-form" id="review" method="GET" action="/review.do">
		<div class="pure-control-group">
			<label for="name">Patient Name:</label>
			<input name = "name" type="text" id="name">
		</div>
		<div class="pure-control-group">
			<label for="dob">Patient DOB: </label>
		<input name="dob" id = "dob" placeholder="dd/mm/yyyy" type="text" class="pickdate">
		</div>
		<div class="pure-control-group" id="button">
			<input type="button" value="Submit" onclick="sendReview(this)">
		</div>
		<input type="hidden" id="p_id" name="p_id"/>
		
		<input type="hidden" name="page" value="SETUP"/>
	</form>
	<input type="button" value="Add New Clinic" onclick="revealClinic(this)" class="home_button">
	<form class="hide_div pure-form pure-form-aligned small-form" id="clinic">
		<div class="pure-control-group">
			<label for="cname">Clinic Name:</label>
			<input type="text" id="cname">
		</div>
		<div class="pure-control-group">
			<label for="pass">Password for Clinic: </label>
			<input id="pass" type="text">
		</div>
		<div class="pure-control-group" id="button">
			<input type="button" value="Submit" onclick="addClinic()">
		</div>
	</form>
	<input type="button" value="Request Update" onclick="sendUpdateRequest()" class="home_button">
	<input type="button" value="Manually Get Patients" onclick="getPatientsManually()" class="home_button">
	<div id="manual_get_patients" style="margin-top:16px;display:none">
		<textarea id="get_patients_area" rows="8" cols="40"></textarea>
	</div>
	<input type="button" value="Manually Store Patients" onclick="openPatientsManually()" class="home_button">
	<div id="manual_store_patients" style="margin-top:16px;display:none">
		<textarea id="store_patients_area" rows="8" cols="40"></textarea>
		<input type="button" value="Store Patients" onclick="writePatientsManually()" class="home_button">
		<div id="manual_add_status"></div>
	</div>
	<input type="button" value="Multiple Test" onclick="testMultiple()" class="home_button">
	<input type="button" value="Multiple P2P" onclick="requestMultiplePatients()" class="home_button">
	<div id="multiple_data"></div>
	
</div>
<div id="hiddenButton" onclick="showInfoText()"></div>
<div id="infotext" style="display:none;"></div> 
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
<script src="/js/peer.min.js"></script>
<script type="text/javascript" src="/_ah/channel/jsapi"></script>
<script src="/js/Comm.js"></script>
<script src="/js/main.js"></script>
<script src="/js/IDB.js"></script>
<script src="/js/IDBForm.js"></script>
<script src="/js/home.js"></script>
<script src="/js/seeall.js"></script>
</body>
</html>