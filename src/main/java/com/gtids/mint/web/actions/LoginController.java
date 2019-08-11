/**
 * 
 */
package com.gtids.mint.web.actions;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gtids.mint.service.UserService;

/**
 * @author Acharya K
 *
 */
@Controller
public class LoginController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = { "/", "/welcome**" }, method = RequestMethod.GET)
	public String defaultPage(HttpServletRequest request, ModelAndView model) {
		String strReturnView = "forward:/login";

		try {
			if ("anonymousUser".equals(getPrincipal())) {
				return strReturnView;
			} else {
				User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
				Collection<GrantedAuthority> c = user.getAuthorities();
				String strRole = c.iterator().next().toString();
				System.out.println(strRole + " : role is : " + user.getUsername());
				com.gtids.mint.data.dto.User userDetails = userService.getUserByUsername(user.getUsername());
				 
				System.out.println("UserDetails: " + userDetails.getUserId());
			 
				userDetails.setRole(strRole);
				model.addObject("userdetails", userDetails);
				HttpSession session = request.getSession(true);
				session.setAttribute("username", userDetails.getUsername());
				session.setAttribute("userdetails", userDetails);
				if ("ROLE_ADMIN".equalsIgnoreCase(strRole)) {
					strReturnView = "forward:/admin";
				} else if ("ROLE_MANAGER".equalsIgnoreCase(strRole)) {
					strReturnView = "forward:/mngr";
				} else if ("ROLE_BKMANAGER".equalsIgnoreCase(strRole)) {
					strReturnView = "forward:/bkmgr";
				} else if ("ROLE_SUPERVISOR".equalsIgnoreCase(strRole)) {
					strReturnView = "forward:/supervisor";
				} else if ("ROLE_AGENT".equalsIgnoreCase(strRole)) {
					System.out.println("ROLE_AGENT............");
					strReturnView = "forward:/agent";
				} else if ("ROLE_VAGENT".equalsIgnoreCase(strRole)) {
					System.out.println("ROLE_VAGENT............");
					strReturnView = "forward:/va";
				}
				return strReturnView;
			}
		} catch (Exception e) {
			// System.out.println(" catch : "+e.getMessage());
			// logger.error("default page method failed:" + e.getMessage());
			return strReturnView;
		}

	 

	}

	@RequestMapping(value = "/admin**", method = RequestMethod.GET)
	public String adminPage() {
		System.out.println("admin page in login controller." + getPrincipal());
		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security Login Form - Database Authentication");
		model.addObject("message", "This page is for ROLE_ADMIN only!");
		model.setViewName("admin_welcome");

		/* return "admin_welcome"; */
		return "admin_dashboard";
	}

	@RequestMapping(value = "/mngr**", method = RequestMethod.GET)
	public String managerDashboardPage() {
		System.out.println("manager Dashboard Page in login controller." + getPrincipal());
		 
		return "mngr_dashboard";
	}

	@RequestMapping(value = "/bkmgr**", method = RequestMethod.GET)
	public String bankManagerDashboardPage() {
		System.out.println("bank manager Dashboard Page in login controller." + getPrincipal());
		 
		return "bkmgr_dashboard";
	}

	@RequestMapping(value = "/supervisor**", method = RequestMethod.GET)
	public String branchDashboardPage() {
		System.out.println("supervisor Dashboard Page in login controller." + getPrincipal());
		 
		return "supervisor_dashboard";
	}

	@RequestMapping(value = "/agent**", method = RequestMethod.GET)
	public String agentDashboardPage() {
		System.out.println("agent Dashboard Page in Logincontroller." + getPrincipal());
		return "agent_dashboard";
	}

	@RequestMapping(value = "/va**", method = RequestMethod.GET)
	public String verificationAgengDashboardPage() {
		System.out.println("vagent Dashboard Page in Logincontroller." + getPrincipal());
		return "vagent_dashboard";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(HttpServletRequest request, @RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {
		// System.out.println(error + " :error :: login in LoginController::" + logout);
		ModelAndView model = new ModelAndView();
		if (error != null) {
			System.out.println("error:"+error);
			model.addObject("error", "Invalid username and password!");
		}

		if (logout != null) {
			System.out.println("logout..." + logout);
			request.getSession().invalidate();
			// session.invalidate();
			model.addObject("msg", "You've logged out successfully.");
		}

		if (logout == null && error == null) {
			// System.out.println("----session expired-------");
			// model.addObject("msg", "Session has been expired.");
		}

		System.out.println("----------------login------------");

		model.setViewName("login");
		return model;
	}

	@RequestMapping(value = "/sessionTimeout")
	public ModelAndView sessionTomeout(HttpServletRequest request) {
		System.out.println("sessionTimeout in maincontroller.");
		ModelAndView model = new ModelAndView();
		model.addObject("msg", "Session has been expired.");
		model.setViewName("login");
		// System.out.println("sessionTimeout in maincontroller....1.......");
		return model;
	}

	// for 403 access denied page
	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public ModelAndView accesssDenied() {
		ModelAndView model = new ModelAndView();

		// check if user is login
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			User userDetail = (User) auth.getPrincipal();
//			System.out.println(userDetail);
			model.addObject("username", userDetail.getUsername());
		}
		model.setViewName("403");
		return model;
	}

	@RequestMapping(value = "/error", method = RequestMethod.GET)
	public String errorPage() {
		System.out.println("error page....");
		return "error";
	}

	private String getPrincipal() {
		String userName = null;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (principal instanceof User) {
			userName = ((User) principal).getUsername();
		} else {
			userName = principal.toString();
		}
		return userName;
	}

	
}
