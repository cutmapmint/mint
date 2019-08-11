/**
 * 
 */
package com.gtids.mint.web.actions.rest;

import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import com.gtids.mint.data.dto.User;
import com.gtids.mint.service.UserService;
import com.gtids.mint.util.StringUtil;

/**
 * @author Acharya K
 *
 */
@RestController
@RequestMapping("/rest")
public class AgentRestController {

	private static Logger log = Logger.getLogger(AgentRestController.class);

	private @Value("${agentGetBalanceApi}") String agentGetBalanceApi;

	@Autowired
	private UserService userService;

	private String txnkey = "";

	@PostMapping(path = "/login", produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody Map<String, Object> androidRestLogin(@RequestParam("username") String username,
			@RequestParam("password") String password, @RequestParam("imei") String imei, HttpSession session)
			throws URISyntaxException {
		System.out.println("login before service call..........");
		User user = userService.getUserByUsername(username);
		System.out.println("login after service call..........");
		System.out.println("urer:" + user);
		Map<String, Object> map = new HashMap<String, Object>();
		if (null != user) {
			System.out.println("user exists-----------");
			if (password.equals(user.getPassword())) {
				System.out.println("pwd exists-----------");
				// if (imei.equals(user.getImei())) {
				System.out.println("LOGIN SUCCESS " + username + ":PWD:" + password + ":imei:" + imei);
				log.info("LOGIN SUCCESS " + username + ":PWD:" + password + ":imei:" + imei);
				user.setRole("ROLE_AGENT");
				txnkey = StringUtil.generateRandomUnique(12);
				user.setTxnKey(txnkey);
				System.out.println(txnkey + "---if---" + imei);
				map.put("MESSAGE", "SUCCESS");
				map.put("StatusCode", "200");
				map.put("txnkey", txnkey);
				map.put("user", user);
				session.setAttribute("agentUserDetails", user);
				return map;
				/*
				 * } else { log.error("LOGIN FAIL WRONG IMEI. "); map.put("MESSAGE", "FAIL");
				 * map.put("MessageContent", "Wrong Imei."); map.put("StatusCode", "400");
				 * return map; }
				 */
			} else {
				log.error("LOGIN FAIL WRONG PASSWORD ");
				map.put("MESSAGE", "FAIL");
				map.put("MessageContent", "Wrong Password.");
				map.put("StatusCode", "400");
				return map;
			}
		} else {
			System.out.println("---else---" + user);
			log.error("LOGIN FAIL WITH WRONG USERNAME ");
			map.put("MESSAGE", "FAIL");
			map.put("MessageContent", "Wrong Username.");
			map.put("StatusCode", "400");
			return map;
		}
	}

	
	@PostMapping(path = "/logout", produces = MediaType.APPLICATION_JSON_VALUE )
	public @ResponseBody Map<String, Object> androidRestLogo( HttpSession session )
			throws URISyntaxException {
		session.invalidate();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("MESSAGE", "SUCCESS");
		map.put("StatusCode", "200");
		map.put("MessageContent", "Successfully Logged out.");
		//map.put("txnkey", txnkey);
		//map.put("user", user);
		return map;
	}
	
	
	@PostMapping(path = "/getBalance", produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody Map<String, Object> getAgentBalance(@RequestParam("aadhar") String aadhar,
			@RequestParam("accNumber") String accNumber, @RequestParam("imei") String imei,
			@RequestParam("txnkey") String txnkey, HttpSession session) throws URISyntaxException {
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println(aadhar + "==============" + accNumber + "=========" + imei + "=======" + txnkey);
		String uri = agentGetBalanceApi;
		RestTemplate restTemplate = new RestTemplate();
		Map<String, String> params = new HashMap<String, String>();
		params.put("accNumber", accNumber);
		/*
		 * HttpHeaders headers = new HttpHeaders();
		 * headers.setAccept(Arrays.asList(MediaType.ALL_VALUE)); HttpEntity<String>
		 * entity = new HttpEntity<String>("parameters", headers);
		 */
		// String result = restTemplate.postForObject(uri, MediaType.ALL_VALUE,
		// String.class);
		String result = restTemplate.postForObject(uri, MediaType.ALL_VALUE, String.class);
		System.out.println(result);
		map.put("MESSAGE", "SUCCESS");
		map.put("StatusCode", "200");
		map.put("Result", result);
		return map;
	}

	// Get login method
	@RequestMapping(value = "/glogin/{username}/{password}", method = RequestMethod.GET)
	public @ResponseBody String login(@PathVariable("username") String username,
			@PathVariable("password") String password) {
		System.out.println(username + "------get without db----" + password);
		return "Hi " + username;
	}

	@PostMapping(value = "/loginabc/{username}/{password}", produces = MediaType.ALL_VALUE)
	public @ResponseBody String loginAbc(@PathVariable("username") String username,
			@PathVariable("password") String password) {
		System.out.println(username + "------POST without db----" + password);
		return "Hi " + username;
	}

	/*
	 * private static void getEmployees() { final String uri =
	 * "http://localhost:8080/springrestexample/employees";
	 * 
	 * RestTemplate restTemplate = new RestTemplate();
	 * 
	 * HttpHeaders headers = new HttpHeaders();
	 * headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
	 * HttpEntity<String> entity = new HttpEntity<String>("parameters", headers);
	 * 
	 * ResponseEntity<String> result = restTemplate.exchange(uri, HttpMethod.GET,
	 * entity, String.class);
	 * 
	 * System.out.println(result); }
	 */
}
