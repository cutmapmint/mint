/**
 * 
 */
package com.gtids.mint.data.dao;

import java.util.List;

import com.gtids.mint.data.dto.User;

/**
 * @author Acharya K
 *
 */
public interface UserDao {

	public User findUserByUsername(String username);
	
	public List<User> findUserByRole(String role);

}
	