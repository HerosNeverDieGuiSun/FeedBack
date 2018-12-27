package com.feedback.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.hadoop.hive.ql.parse.HiveParser_IdentifiersParser.nullCondition_return;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.feedback.domain.Administrators;
import com.feedback.domain.Leader;
import com.feedback.domain.Student;
import com.feedback.domain.SuperAdm;
import com.feedback.domain.TeacherIn;
import com.feedback.domain.TeacherOut;
import com.feedback.domain.TeacherSchool;
import com.feedback.service.LoginService;

@Controller
public class UserLoginController {
	@Resource
	private LoginService loginService;
	
	@RequestMapping(value="/LoginServlet", method=RequestMethod.POST)
	public String UserLogin(HttpServletRequest request, HttpSession session) {
		String username = request.getParameter("usern");
		String userpsw = request.getParameter("userp");
		
		Student student = loginService.checkStudent(username, userpsw);
		TeacherIn teacherIn = loginService.checkTeacherIn(username, userpsw);
		TeacherOut teacherOut = loginService.checkTeacherOut(username, userpsw);
		TeacherSchool teacherSchool = loginService.checkTeacherSchool(username, userpsw);
		Leader leader = loginService.checkLeader(username, userpsw);
		Administrators admin = loginService.checkAdmin(username, userpsw);
		SuperAdm superAdm = loginService.checkSuperAdm(username, userpsw);
		
		
		if (student != null) {
			session.setAttribute("student", student);
			return "redirect:/StudentCtrl/ListStudentInfo";
		} else if (teacherIn != null) {
			session.setAttribute("teacherIn", teacherIn);
			return "redirect:/teacher/GetTeacherInServlet";
		} else if (teacherOut != null) {
			session.setAttribute("teacherOut", teacherOut);
			return "redirect:/teacher/GetTeacherOutServlet";
		} else if (teacherSchool != null) {
			session.setAttribute("teacherSchool", teacherSchool);
			return "redirect:/teacher/GetTeacherSchoolServlet";
		} else if (leader != null) {
			session.setAttribute("leader", leader);
			return "redirect:/leader/leaderfeedbackctrl";
		} else if (superAdm != null) {
			//System.out.println(superAdm.superno + " " + superAdm.superpsw);
			session.setAttribute("superAdm", superAdm);
			return "redirect:/GetTeacherInServlet";
		} else if (admin != null) {
			session.setAttribute("admin", admin);
			return "redirect:/admin/allfeedbackctrl";
		}
		
		request.setAttribute("usererror", "用户名或密码错误");
		return "index";
	}
}
