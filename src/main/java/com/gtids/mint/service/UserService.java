/**
 * 
 */
package com.gtids.mint.service;

import java.util.List;

import com.gtids.mint.data.dto.User;

/**
 * @author Acharya K
 *
 */
public interface UserService {
	
	public User getUserByUsername(String username);
	
	public List<User> getUserByRole(String role);

}
