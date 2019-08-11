/**
 * 
 */
package com.gtids.mint.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gtids.mint.data.dao.UserDao;
import com.gtids.mint.data.dto.User;
import com.gtids.mint.service.UserService;

/**
 * @author Acharya K
 *
 */
@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;

	@Override
	public User getUserByUsername(String username) {
		return userDao.findUserByUsername(username);
	}

	@Override
	public List<User> getUserByRole(String role) {
		return userDao.findUserByRole(role);
	}

}
