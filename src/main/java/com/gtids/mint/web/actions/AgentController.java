/**
 * 
 */
package com.gtids.mint.web.actions;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author Acharya K
 *
 */
@Controller
@RequestMapping(value = "/agent")
public class AgentController {

	@RequestMapping(value = "/dsboard", method = RequestMethod.GET)
	public String getDashboardPage(HttpServletRequest request, Model model) {
		return "agent_dashboard";
	}

	@RequestMapping(value = "/changepwd", method = RequestMethod.GET)
	public String getChangePasswordPage(HttpServletRequest request, Model model) {
		return "change_pwd";
	}
	
 

}
