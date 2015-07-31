<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Events Activities</title>
<link rel="stylesheet" href="/css/page-style.css" type="text/css"/>
<link rel="stylesheet" href="/css/events_activities.css" type="text/css"/>
<link rel="stylesheet" href="/css/pure_grid.css" type="text/css"/>  
<link rel="stylesheet" href="/css/pure-min.css"/> 
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" /> 
</head>
<body>
<h2>Major Events and Social Activities</h2>
<span onclick="homeFromForm()" id="home_link_span">Return to Homepage</span>
<form id="test_form" action="form.do" method="GET">
<div id="navbar"> 
    
  <span onclick="linkClick('personal_details')">Patient Information</span>
  <span onclick="linkClick('history')">Patient History</span>
  <span onclick="linkClick('medical')">GP Information</span>
  <span onclick="linkClick('concerns')">Patient Concerns</span>
  <span onclick="linkClick('neuro')">Neuro History</span>
  <span onclick="linkClick('events_activities')" class="current_page">Events and Activities</span>
  <span onclick="linkClick('living')">Living Situation</span>
  <span onclick="linkClick('lifestyle')">Patient Lifestyle</span>
  <span onclick="linkClick('memory_test')">Test Battery</span>
  <span onclick="linkClick('analysis')">Summary and Analysis</span> 
  
  <input type="hidden" id="text_form" name="page"/>
</div> 
</form>
<form id="events_form" class="pure-form pure-form-stacked" method="POST" action="events_activities.do">
	<fieldset id="major_event_field">
		<legend>Major Life Events</legend>
		<div id="events_grid">
			<div id="header_row">
				<div class="pure-u-1-4 title">
					<h3>Event</h3>
				</div>
				<div class="pure-u-1-4" style="max-width:180px;margin: 0px 1% 0px 1%">
				</div>
				<div class="pure-u-1-4 select_box" style="text-align:center">
				<h3>When</h3>
				</div>
				<div class="pure-u-1-4 notes_column" style="max-width:160px;text-align:center">
				<h3>Notes</h3>
				</div>
			</div>
		
			<div id="divorce">
				<div class="pure-u-1-4 title">Divorce</div>
				<div class="pure-u-1-4 check">
				<input type="checkbox" name="divorce_check" onclick="showHiddenRowEA(this, '#divorce')" class="event_check">
				</div>
				<div class="pure-u-1-4 select_box">
					<select name="divorce_time" class="time_frame">
						<option value="none">N/A</option>
						<option value="three_mon">3 months</option>
						<option value="six_mon">6 months</option>
						<option value="one_yr">1 year</option>
						<option value="two_yr">2 years</option>
						<option value="threep_yr">3+ years</option>
					</select>
				</div>
				<div class="pure-u-1-4 notes_column">
				<textarea name="divorce_notes"form="events_form" rows="2" cols="24"></textarea>
				</div>
			</div>
			
			<div id="Bereavement">
				<div class="pure-u-1-4 title">Bereavement</div>
				<div class="pure-u-1-4 check">
				<input type="checkbox" name="bereavement_check" onclick="showHiddenRowEA(this,'#Bereavement')" class="event_check">
				</div>
				<div class="pure-u-1-4 select_box">
					<select name="bereavement_time" class="time_frame">
						<option value="none">N/A</option>
						<option value="three_mon">3 months</option>
						<option value="six_mon">6 months</option>
						<option value="one_yr">1 year</option>
						<option value="two_yr">2 years</option>
						<option value="threep_yr">3+ years</option>
					</select>
				</div>
				<div class="pure-u-1-4 notes_column">
				<textarea name="bereavement_notes"form="events_form" rows="2" cols="24"></textarea> 
				</div>
			</div>
			
			<div id="moving_house">
				<div class="pure-u-1-4 title">Moving House</div>
				<div class="pure-u-1-4 check">
				<input type="checkbox" name="moving_house_check" onclick="showHiddenRowEA(this,'#moving_house')" class="event_check">
				</div>
				<div class="pure-u-1-4 select_box">
					<select name="moving_house_time" class="time_frame">
						<option value="none">N/A</option>
						<option value="three_mon">3 months</option>
						<option value="six_mon">6 months</option>
						<option value="one_yr">1 year</option>
						<option value="two_yr">2 years</option>
						<option value="threep_yr">3+ years</option>
					</select>
				</div>
				<div class="pure-u-1-4 notes_column">
				<textarea name="moving_house_notes"form="events_form" rows="2" cols="24"></textarea> 
				</div>
			</div>
			
			<div id="redundancy">
				<div class="pure-u-1-4 title">Redundancy</div>
				<div class="pure-u-1-4 check">
				<input type="checkbox" name="redundancy_check" onclick="showHiddenRowEA(this,'#redundancy')" class="event_check">
				</div>
				<div class="pure-u-1-4 select_box">
					<select name="redundancy_time" class="time_frame">
						<option value="none">N/A</option>
						<option value="three_mon">3 months</option>
						<option value="six_mon">6 months</option>
						<option value="one_yr">1 year</option>
						<option value="two_yr">2 years</option>
						<option value="threep_yr">3+ years</option>
					</select>
				</div>
				<div class="pure-u-1-4 notes_column">
				<textarea name="redundancy_notes"form="events_form" rows="2" cols="24"></textarea> 
				</div>
			</div>
			
			<div id="disharmony">
				<div class="pure-u-1-4 title">Family Disharmony</div>
				<div class="pure-u-1-4 check">
				<input type="checkbox" name="family_disharmony_check" onclick="showHiddenRowEA(this,'#disharmony')" class="event_check">
				</div>
				<div class="pure-u-1-4 select_box">
					<select name="family_disharmony_time" class="time_frame">
						<option value="none">N/A</option>
						<option value="three_mon">3 months</option>
						<option value="six_mon">6 months</option>
						<option value="one_yr">1 year</option>
						<option value="two_yr">2 years</option>
						<option value="threep_yr">3+ years</option>
					</select>
				</div>
				<div class="pure-u-1-4 notes_column">
				<textarea name="family_disharmony_notes"form="events_form" rows="2" cols="24"></textarea> 
				</div>
			</div>
			
			<div id="argument">
				<div class="pure-u-1-4 title">Other Relationship Disharmony</div>
				<div class="pure-u-1-4 check">
				<input type="checkbox" name="other_disharmony_check" onclick="showHiddenRowEA(this,'#argument')" class="event_check">
				</div>
				<div class="pure-u-1-4 select_box">
					<select name="other_disharmony_time" class="time_frame">
						<option value="none">N/A</option>
						<option value="three_mon">3 months</option>
						<option value="six_mon">6 months</option>
						<option value="one_yr">1 year</option>
						<option value="two_yr">2 years</option>
						<option value="threep_yr">3+ years</option>
					</select>
				</div>
				<div class="pure-u-1-4 notes_column">
				<textarea name="other_disharmony_notes"form="events_form" rows="2" cols="24"></textarea> 
				</div>
			</div>
			
			<div id="financial">
				<div class="pure-u-1-4 title">Financial Issues</div>
				<div class="pure-u-1-4 check">
				<input type="checkbox" name="financial_check" onclick="showHiddenRowEA(this,'#financial')" class="event_check">
				</div>
				<div class="pure-u-1-4 select_box">
					<select name="financial_time" class="time_frame">
						<option value="none">N/A</option>
						<option value="three_mon">3 months</option>
						<option value="six_mon">6 months</option>
						<option value="one_yr">1 year</option>
						<option value="two_yr">2 years</option>
						<option value="threep_yr">3+ years</option>
					</select>
				</div>
				<div class="pure-u-1-4 notes_column">
				<textarea name="financial_notes"form="events_form" rows="2" cols="24"></textarea> 
				</div>
			</div>
			
			<div id="retirement">
				<div class="pure-u-1-4 title">Retirement</div>
				<div class="pure-u-1-4 check">
				<input type="checkbox" name="retirement_check" onclick="showHiddenRowEA(this,'#retirement')" class="event_check">
				</div>
				<div class="pure-u-1-4 select_box">
					<select name="retirement_time" class="time_frame">
						<option value="none">N/A</option>
						<option value="three_mon">3 months</option>
						<option value="six_mon">6 months</option>
						<option value="one_yr">1 year</option>
						<option value="two_yr">2 years</option>
						<option value="threep_yr">3+ years</option>
					</select>
				</div>
				<div class="pure-u-1-4 notes_column">
				<textarea name="retirement_notes"form="events_form" rows="2" cols="24"></textarea> 
				</div>
			</div>
			
			<div id="job_stress">
				<div class="pure-u-1-4 title">Job Stress</div>
				<div class="pure-u-1-4 check">
				<input type="checkbox" name="job_stress_check" onclick="showHiddenRowEA(this,'#job_stress')" class="event_check">
				</div>
				<div class="pure-u-1-4 select_box">
					<select name="job_stress_time" class="time_frame">
						<option value="none">N/A</option>
						<option value="three_mon">3 months</option>
						<option value="six_mon">6 months</option>
						<option value="one_yr">1 year</option>
						<option value="two_yr">2 years</option>
						<option value="threep_yr">3+ years</option>
					</select>
				</div>
				<div class="pure-u-1-4 notes_column">
				<textarea name="job_stress_notes"form="events_form" rows="2" cols="24"></textarea> 
				</div>
			</div>
			
			<div id="other" class="life_event">
				<div class="pure-u-1-4 title">Other</div>
				<div class="pure-u-1-4" id="other_text_box">
				<input type="text" name="other_text" onchange="showHiddenRowEAText(this,'#other')" class="event_check" style="margin-right:3%">
				</div>
				<div class="pure-u-1-4 select_box">
					<select name="other_time" class="time_frame">
						<option value="none">N/A</option>
						<option value="three_mon">3 months</option>
						<option value="six_mon">6 months</option>
						<option value="one_yr">1 year</option>
						<option value="two_yr">2 years</option>
						<option value="threep_yr">3+ years</option>
					</select>
				</div>
				<div class="pure-u-1-4 notes_column">
				<textarea name="other_notes"form="events_form" rows="2" cols="24"></textarea> 
				</div>
			</div>
		</div>
		
		<div class="collat_div">
			<input type="button" onclick="addNewCollatEvents()" class="pure-button eaa-button" value="Add Event from Collateral">
			<div id="events_collat_grid" class="hide_div">
				<div id="header_row">
					<div class="pure-u-1-4 title">
						<h3>Event</h3>
					</div>
					<div class="pure-u-1-4" style="max-width:180px;margin: 0px 1% 0px 1%">
					</div>
					<div class="pure-u-1-4 select_box" style="text-align:center">
					<h3>When</h3>
					</div>
					<div class="pure-u-1-4 notes_column" style="max-width:160px;text-align:center">
					<h3>Notes</h3>
					</div>
				</div>
			
				<div id="divorce">
					<div class="pure-u-1-4 title">Divorce</div>
					<div class="pure-u-1-4 check">
					<input type="checkbox" name="divorce_collat_check" onclick="showHiddenRowEA(this, '#divorce')" class="event_collat_check">
					</div>
					<div class="pure-u-1-4 select_box">
						<select name="divorce_collat_time" class="time_frame">
							<option value="none">N/A</option>
							<option value="three_mon">3 months</option>
							<option value="six_mon">6 months</option>
							<option value="one_yr">1 year</option>
							<option value="two_yr">2 years</option>
							<option value="threep_yr">3+ years</option>
						</select>
					</div>
					<div class="pure-u-1-4 notes_column">
					<textarea name="rec_event_collat_notes"form="events_form" rows="2" cols="24"></textarea>
					</div>
				</div>
				
				<div id="Bereavement">
					<div class="pure-u-1-4 title">Bereavement</div>
					<div class="pure-u-1-4 check">
					<input type="checkbox" name="bereavement_collat_check" onclick="showHiddenRowEA(this,'#Bereavement')" class="event_collat_check">
					</div>
					<div class="pure-u-1-4 select_box">
						<select name="bereavement_collat_time" class="time_frame">
							<option value="none">N/A</option>
							<option value="three_mon">3 months</option>
							<option value="six_mon">6 months</option>
							<option value="one_yr">1 year</option>
							<option value="two_yr">2 years</option>
							<option value="threep_yr">3+ years</option>
						</select>
					</div>
					<div class="pure-u-1-4 notes_column">
					<textarea name="Bereavement_collat_notes"form="events_form" rows="2" cols="24"></textarea> 
					</div>
				</div>
				
				<div id="moving_house">
					<div class="pure-u-1-4 title">Moving House</div>
					<div class="pure-u-1-4 check">
					<input type="checkbox" name="moving_house_collat_check" onclick="showHiddenRowEA(this,'#moving_house')" class="event_collat_check">
					</div>
					<div class="pure-u-1-4 select_box">
						<select name="moving_house_collat_time" class="time_frame">
							<option value="none">N/A</option>
							<option value="three_mon">3 months</option>
							<option value="six_mon">6 months</option>
							<option value="one_yr">1 year</option>
							<option value="two_yr">2 years</option>
							<option value="threep_yr">3+ years</option>
						</select>
					</div>
					<div class="pure-u-1-4 notes_column">
					<textarea name="moving_house_collat_notes"form="events_form" rows="2" cols="24"></textarea> 
					</div>
				</div>
				
				<div id="redundancy">
					<div class="pure-u-1-4 title">Redundancy</div>
					<div class="pure-u-1-4 check">
					<input type="checkbox" name="redundancy_collat_check" onclick="showHiddenRowEA(this,'#redundancy')" class="event_collat_check">
					</div>
					<div class="pure-u-1-4 select_box">
						<select name="redundancy_collat_time" class="time_frame">
							<option value="none">N/A</option>
							<option value="three_mon">3 months</option>
							<option value="six_mon">6 months</option>
							<option value="one_yr">1 year</option>
							<option value="two_yr">2 years</option>
							<option value="threep_yr">3+ years</option>
						</select>
					</div>
					<div class="pure-u-1-4 notes_column">
					<textarea name="redundancy_collat_notes"form="events_form" rows="2" cols="24"></textarea> 
					</div>
				</div>
				
				<div id="disharmony">
					<div class="pure-u-1-4 title">Family Disharmony</div>
					<div class="pure-u-1-4 check">
					<input type="checkbox" name="family_disharmony_collat_check" onclick="showHiddenRowEA(this,'#disharmony')" class="event_collat_check">
					</div>
					<div class="pure-u-1-4 select_box">
						<select name="family_disharmony_collat_time" class="time_frame">
							<option value="none">N/A</option>
							<option value="three_mon">3 months</option>
							<option value="six_mon">6 months</option>
							<option value="one_yr">1 year</option>
							<option value="two_yr">2 years</option>
							<option value="threep_yr">3+ years</option>
						</select>
					</div>
					<div class="pure-u-1-4 notes_column">
					<textarea name="family_disharmony_collat_notes"form="events_form" rows="2" cols="24"></textarea> 
					</div>
				</div>
				
				<div id="argument">
					<div class="pure-u-1-4 title">Other Relationship Disharmony</div>
					<div class="pure-u-1-4 check">
					<input type="checkbox" name="other_disharmony_collat_check" onclick="showHiddenRowEA(this,'#argument')" class="event_collat_check">
					</div>
					<div class="pure-u-1-4 select_box">
						<select name="other_disharmony_collat_time" class="time_frame">
							<option value="none">N/A</option>
							<option value="three_mon">3 months</option>
							<option value="six_mon">6 months</option>
							<option value="one_yr">1 year</option>
							<option value="two_yr">2 years</option>
							<option value="threep_yr">3+ years</option>
						</select>
					</div>
					<div class="pure-u-1-4 notes_column">
					<textarea name="other_disharmony_collat_notes"form="events_form" rows="2" cols="24"></textarea> 
					</div>
				</div>
				
				<div id="financial">
					<div class="pure-u-1-4 title">Financial Issues</div>
					<div class="pure-u-1-4 check">
					<input type="checkbox" name="financial_collat_check" onclick="showHiddenRowEA(this,'#financial')" class="event_collat_check">
					</div>
					<div class="pure-u-1-4 select_box">
						<select name="financial_collat_time" class="time_frame">
							<option value="none">N/A</option>
							<option value="three_mon">3 months</option>
							<option value="six_mon">6 months</option>
							<option value="one_yr">1 year</option>
							<option value="two_yr">2 years</option>
							<option value="threep_yr">3+ years</option>
						</select>
					</div>
					<div class="pure-u-1-4 notes_column">
					<textarea name="financial_collat_notes"form="events_form" rows="2" cols="24"></textarea> 
					</div>
				</div>
				
				<div id="retirement">
					<div class="pure-u-1-4 title">Retirement</div>
					<div class="pure-u-1-4 check">
					<input type="checkbox" name="retirement_collat_check" onclick="showHiddenRowEA(this,'#retirement')" class="event_collat_check">
					</div>
					<div class="pure-u-1-4 select_box">
						<select name="retirement_collat_time" class="time_frame">
							<option value="none">N/A</option>
							<option value="three_mon">3 months</option>
							<option value="six_mon">6 months</option>
							<option value="one_yr">1 year</option>
							<option value="two_yr">2 years</option>
							<option value="threep_yr">3+ years</option>
						</select>
					</div>
					<div class="pure-u-1-4 notes_column">
					<textarea name="retirement_collat_notes"form="events_form" rows="2" cols="24"></textarea> 
					</div>
				</div>
				
				<div id="job_stress">
					<div class="pure-u-1-4 title">Job Stress</div>
					<div class="pure-u-1-4 check">
					<input type="checkbox" name="job_stress_collat_check" onclick="showHiddenRowEA(this,'#job_stress')" class="event_collat_check">
					</div>
					<div class="pure-u-1-4 select_box">
						<select name="job_stress_collat_time" class="time_frame">
							<option value="none">N/A</option>
							<option value="three_mon">3 months</option>
							<option value="six_mon">6 months</option>
							<option value="one_yr">1 year</option>
							<option value="two_yr">2 years</option>
							<option value="threep_yr">3+ years</option>
						</select>
					</div>
					<div class="pure-u-1-4 notes_column">
					<textarea name="job_stress_collat_notes"form="events_form" rows="2" cols="24"></textarea> 
					</div>
				</div>
				
				<div id="other" class="life_event">
					<div class="pure-u-1-4 title">Other</div>
					<div class="pure-u-1-4" id="other_text_box">
					<input type="text" name="other_collat_text" onchange="showHiddenRowEAText(this,'#other')" class="event_collat_check" style="margin-right:3%">
					</div>
					<div class="pure-u-1-4 select_box">
						<select name="other_collat_time" class="time_frame">
							<option value="none">N/A</option>
							<option value="three_mon">3 months</option>
							<option value="six_mon">6 months</option>
							<option value="one_yr">1 year</option>
							<option value="two_yr">2 years</option>
							<option value="threep_yr">3+ years</option>
						</select>
					</div>
					<div class="pure-u-1-4 notes_column">
					<textarea name="other_collat_notes"form="events_form" rows="2" cols="24"></textarea> 
					</div>
				</div>
			</div>
		</div>
	</fieldset>
	
	<fieldset id="social_field">
		<legend>Changes in Social Activities</legend>
		<div id="full_social">
			<div class="activity_q_check">Have you ever been involved in any social activities?</div>
			<select name="social_yn" onchange="revealSocial(this)" style="display:inline-block">
				<option value="no">No</option>
				<option value="yes">Yes</option>
			</select>
			<div id="social_reveal" class="hide_div">
			
				<div id="social_div">
					<div class="title">What social activities have you been involved in?</div>
					<div id="activity_header" class="pure-g-r">
						<div class="pure-u-1-5 select_box header events-1-5" style="min-width:150px; margin: 10px 7% 10px 2%">Activity</div>
						<div class="pure-u-1-5 pure-control-group events-1-5 header">Still Involved?</div>
						<div class="pure-u-1-5 events-1-5 header" style="width:6.5%">Current hours per week</div>
						<div class="pure-u-1-5 events-1-5 header" style="width:7%">Previous hours per week</div>
						<div class="pure-u-1-5 events-1-5 header">Changed When?</div>
						<div class="pure-u-1-5 events-1-5 header">Reason for Change</div>
					</div>
					<div id="activity_entry" style="min-width:800px">
						<div class="pure-g-r">
							<div class="pure-u-1-5 select_box" style="max-width:150px; margin: 10px 7% 10px 2%;">
								<select name="activity" id="activ_entry" disabled>
								<option value="unknown">Unknown..</option>
									<option value="other">Other..</option>
									<option value="dancing">Dancing</option>
									<option value="reading">Reading</option>
									<option value="tv">Television</option>
									<option value="football">Football</option>
									<option value="golf">Golf</option>
									<option value="swimming">Swimming</option>
									<option value="walking">Walking</option>
									<option value="yoga">Yoga/Pilates</option>
									<option value="cards">Card Games</option>
									<option value="puzzles">Sudoku/Crosswords/Puzzles</option>
									<option value="restaraunts">Visiting Restaurants/Pubs</option>
									<option value="visiting">Visiting Friends/Family</option>
									<option value="sailing">Sailing</option>
									<option value="volunteering">Volunteering</option>
									<option value="gym">Gym</option>
									<option value="games">Computer Games</option>
									<option value="hiking">Hiking</option>
									<option value="cycling">Cycling</option>
									
								</select>
							</div>
							<div class="pure-u-1-5 pure-control-group events-1-5">
								<select name="involvement" onclick="changeActivity(this)">
									<option value="no">No</option>
									<option value="ongoing">Ongoing</option>
									<option value="decrease">Less active</option>
								</select>
							</div>
							<div class="pure-u-1-5 events-1-5 current_hours" style="width:7%">
								<input type="text" name="current_hours" class="current_hours_input" style="width:4em;">
							</div>
							<div class="pure-u-1-5 events-1-5 previous_hours" style="width:7%">
								<input type="text" name="previous_hours" class="prev_hours_input" style="width:4em;">
							</div>
							
							<div class="pure-u-1-5 events-1-5 when_stopped">
								<select name="time_changed" class="time_stopped_input" >
									<option value="three_mon">3 months</option>
									<option value="six_mon">6 months</option>
									<option value="one_yr">1 year</option>
									<option value="two_yr">2 years</option>
									<option value="threep_yr">3+ years</option>
								</select>
							</div>
							
							<div class="pure-u-1-5 events-1-5 reason_notes notes_column">
									<textarea form="events_form" class="reason_input" name="activity_notes" rows="2" cols="24"></textarea>
							</div>
						</div>
					</div>
				</div>
				<input type="button" onclick="addNewActivity()" style="margin-left:2%;" class="pure-button" value="Add Activity">
			
			</div>
			<div><textarea form="events_form" name="social_notes" rows="3" cols="40" style="margin-top: 2px;margin-left:1%;"></textarea></div>
		</div>
		<div  class="collat_div">
			<input type="button" id="addActivityCollatButton" onclick="addActivityCollat()" style="margin-left:1%;margin-top:12px;" class="pure-button" value="Collateral Activities">
			<div id="full_social_collat" class="hide_div">
				<div class="activity_q_check">Have they ever been involved in any social activities?</div>
				<select name="social_yn" onchange="revealSocialCollat(this)" style="display:inline-block">
					<option value="no">No</option>
					<option value="yes">Yes</option>
				</select>
				<div id="social_reveal_collat" class="hide_div">
				
					<div id="social_div_collat">
						<div class="title">What social activities have you been involved in?</div>
						<div id="activity_header" class="pure-g-r">
							<div class="pure-u-1-5 select_box header events-1-5" style="min-width:150px; margin: 10px 7% 10px 2%">Activity</div>
							<div class="pure-u-1-5 pure-control-group events-1-5 header">Still Involved?</div>
							<div class="pure-u-1-5 events-1-5 header" style="width:6.5%">Current hours per week</div>
							<div class="pure-u-1-5 events-1-5 header" style="width:7%">Previous hours per week</div>
							<div class="pure-u-1-5 events-1-5 header">Changed When?</div>
							<div class="pure-u-1-5 events-1-5 header">Reason for Change</div>
						</div>
						<div id="activity_entry" style="min-width:800px">
							<div class="pure-g-r">
								<div class="pure-u-1-5 select_box" style="max-width:150px; margin: 10px 7% 10px 2%;">
									<select name="activity_collat" id="collat_activ_entry" disabled>
									  <option value="unknown">Unknown</option>
										<option value="dancing">Dancing</option>
										<option value="reading">Reading</option>
										<option value="tv">Television</option>
										<option value="football">Football</option>
										<option value="golf">Golf</option>
										<option value="swimming">Swimming</option>
										<option value="walking">Walking</option>
										<option value="yoga">Yoga/Pilates</option>
										<option value="cards">Card Games</option>
										<option value="puzzles">Sudoku/Crosswords/Puzzles</option>
										<option value="restaraunts">Visiting Restaurants/Pubs</option>
										<option value="visiting">Visiting Friends/Family</option>
										<option value="sailing">Sailing</option>
										<option value="volunteering">Volunteering</option>
										<option value="gym">Gym</option>
										<option value="games">Computer Games</option>
										<option value="hiking">Hiking</option>
										<option value="cycling">Cycling</option>
										<option value="other">Other..</option>
									</select>
								</div>
								<div class="pure-u-1-5 pure-control-group events-1-5">
									<select name="involvement_collat" onclick="changeActivity(this)">
										<option value="no">No</option>
										<option value="ongoing">Ongoing</option>
										<option value="decrease">Less active</option>
									</select>
								</div>
								<div class="pure-u-1-5 events-1-5 current_hours" style="width:7%">
									<input type="text" name="current_hours_collat" class="current_hours_input" style="width:4em;">
								</div>
								<div class="pure-u-1-5 events-1-5 previous_hours" style="width:7%">
									<input type="text" name="previous_hours_collat" class="prev_hours_input" style="width:4em;">
								</div>
								
								<div class="pure-u-1-5 events-1-5 when_stopped">
									<select name="time_changed_collat" class="time_stopped_input" >
										<option value="three_mon">3 months</option>
										<option value="six_mon">6 months</option>
										<option value="one_yr">1 year</option>
										<option value="two_yr">2 years</option>
										<option value="threep_yr">3+ years</option>
									</select>
								</div>
								
								<div class="pure-u-1-5 events-1-5 reason_notes notes_column">
										<textarea form="events_form" class="reason_input" name="activity_notes_collat" rows="2" cols="24"></textarea>
								</div>
							</div>
						</div>
					</div>
					<input type="button" onclick="addNewActivityToCollat()" style="margin-left:2%;" class="pure-button" value="Add Activity">
				</div>
				<div><textarea form="events_form" name="social_notes_collat" rows="3" cols="40" style="margin-top: 2px;margin-left:1%;"></textarea></div>
			</div>
		</div>
	</fieldset>

	<fieldset id="anxiety_depression field">
		<legend>Depression</legend>
		<!-- 
		<div>
			<span class="anx_dep_title">Do you feel anxious generally?</span>
			<input type="checkbox" name="anxiety_check"  onclick="showHiddenDiv(this,'anxiety_div')" id="anx_check"><br>
		</div>
		<br>
		<div id="anxiety_div" class="hide_div">
		<div class="anx_dep_subtitle">For how long?</div>
		<div id="anx_time" style="display:inline-block;margin-left:3.8em;">
			<select name="time_frame" onclick="showReactiveList(this,'#anxiety_div')">
				<option value="three_mon">3 months</option>
				<option value="six_mon">6 months</option>
				<option value="one_yr">1 year</option>
				<option value="two_yr">2 years</option>
				<option value="threep_yr">3+ years</option>
			</select>
		</div>
		<div class="hide_div reactive_list" style="margin-top:1em;">
			<div class="anx_dep_subtitle">Could this be related to:</div>
			<select name="life_events" style="display:inline-block;">
				<option value="other" selected="selected">Other...</option>
			</select>
		</div>		
		<div style="margin-top:0.8em;margin-left:2%;"><textarea name="anxiety_notes" rows="2" cols="30" form="events_form"></textarea></div>
		</div>
		<br><br>
		<div>
			<span class="anx_dep_title">Do you feel depressed generally?</span>
			<input type="checkbox" name="dep_check"  onclick="showHiddenDiv(this,'depression_div')" id="depress_check"><br>
		</div>
		<br>
		<div id="depression_div" class="hide_div">
			<div class="anx_dep_subtitle">For how long?</div>
			<div id="dep_time" style="display:inline-block;margin-left:3.8em;">
				<select name="time_frame" onclick="showReactiveList(this,'#depression_div')">
					<option value="three_mon">3 months</option>
					<option value="six_mon">6 months</option>
					<option value="one_yr">1 year</option>
					<option value="two_yr">2 years</option>
					<option value="threep_yr">3+ years</option>
				</select>
			</div>
			<div class="hide_div reactive_list" style="margin-top:1em;">
				<div class="anx_dep_subtitle">Could this be related to:</div>
				<select name="life_events" style="display:inline-block;">
					<option value="other" selected="selected">Other...</option>
				</select>
			</div>
			<div style="margin-top:0.8em;margin-left:2%;"><textarea form="events_form" rows="2" cols="30" name="depression_notes"></textarea></div>
		</div>
		<br> -->
		<div id="depression_div">
			<div class="pure-g-r"> 
				<div class="pure-u-1-2" style="width:35%"> 
					<label for="feeling_down">During the last month have you been feeling down, depressed or hopeless?</label>
				</div>
				<div class="pure-u-1-2"> 
					<select name="depression_yn" onchange="revealDepression(this)" style="display:inline-block" id="feeling_down" class="dep_select">
						<option value="unknown">Unknown</option>
						<option value="no">No</option>
						<option value="yes">Yes</option>
					</select>
				</div>
			</div>
			<div class="pure-g-r">
				<div class="pure-u-1-2" style="width:35%">
					<label for="no_interest">During the last month have you been bothered by having little interest or pleasure in doing things?</label>
				</div>
				<div class="pure-u-1-2"> 
					<select name="pleasure_yn" onchange="revealDepression(this)" style="display:inline-block" id="no_interest" class="dep_select">
						<option value="unknown">Unknown</option>
						<option value="no">No</option>
						<option value="yes">Yes</option>
					</select>
				</div>
			</div>
			
			<div id="dep_advanced" class="hide_div">
				<div class="anx_dep_title" style="margin-bottom:18px;">
					During the last month, have you been bothered by:
				</div>
				<div class="pure-g-r"> 
					<div class="pure-u-1-2"> 
						<label for="feeling_down">Feelings of worthlessness?</label>
					</div>
					<div class="pure-u-1-2"> 
						<select name="worthless_yn" onchange="revealDepression(this)" style="display:inline-block" id="worthless" class="dep_select">
							<option value="unknown">Unknown</option>
							<option value="no">No</option>
							<option value="yes">Yes</option>
						</select>
					</div>
				</div>
				<div class="pure-g-r">
					<div class="pure-u-1-2">
						<label for="no_interest">Poor concentration?</label>
					</div>
					<div class="pure-u-1-2"> 
						<select name="concentration_yn" onchange="revealDepression(this)" style="display:inline-block" id="concentration" class="dep_select">
							<option value="unknown">Unknown</option>
							<option value="no">No</option>
							<option value="yes">Yes</option>
						</select>
					</div>
				</div>
				<div class="pure-g-r">
					<div class="pure-u-1-2">
						<label for="no_interest">Thoughts of death?</label>
					</div>
					<div class="pure-u-1-2"> 
						<select name="death_yn" onchange="revealDepression(this)" style="display:inline-block" id="death" class="dep_select">
							<option value="unknown">Unknown</option>
							<option value="no">No</option>
							<option value="yes">Yes</option>
						</select>
					</div>
				</div>
			</div>
		</div>
	</fieldset>	
	<input type="hidden" id="hiddenID" name="hiddenID"/>
</form>

<div class="footer">
	<span onclick="submitPage('living')">Submit and Continue</span>
</div>

<div id="dialog-confirm" title="Submit Page?" style="display:none">
  <p><span class="ui-icon" style="float:left; margin:0 7px 20px 0;"></span>Do you want to submit this page? (If you leave, the page will need to be filled in again)</p>
</div>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
<script src="/js/main.js"></script>
<script src="/js/events_script.js"></script>
<script src="/js/IDB.js"></script>
<script src="/js/IDBForm.js"></script>
<script>
$(document).ready(function() {
	if("${id}" != "")
		$("#hiddenID").val("${id}");
	else if(typeof(Storage) !== "undefined"){
		$("#hiddenID").val(sessionStorage.p_id);
		if(sessionStorage.collat)
			hideCollat();
	} else {
		$("#hiddenID").val("0");
	}
	if(typeof(Storage) !== "undefined")
		if(!(sessionStorage.collat))
			hideCollat();
});
</script>
</body>
</html>