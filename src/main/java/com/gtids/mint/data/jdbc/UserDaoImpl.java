/**
 * 
 */
package com.gtids.mint.data.jdbc;

import java.util.List;

import javax.sql.DataSource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.gtids.mint.data.dao.UserDao;
import com.gtids.mint.data.dto.User;
import com.gtids.mint.data.jdbc.mapper.UserRowMapper;

/**
 * @author Acharya K
 *
 */
@Repository("userDao")
public class UserDaoImpl implements UserDao {

	private static Logger log = Logger.getLogger(UserDaoImpl.class);
	
	private @Value("${getUserByUsername}") String getUserByUsername;
	private @Value("${getUserByRole}") String getUserByRole;

	@Autowired
	private DataSource dataSource;

	public JdbcTemplate getJdbcTemplate() {
		return new JdbcTemplate(dataSource);
	}

	@Override
	public User findUserByUsername(String username) {
		try {System.out.println("findUserByUsername method in dao...........");
			return getJdbcTemplate().queryForObject(getUserByUsername, new Object[] { username }, new UserRowMapper());
		} catch (Exception e) {
			System.out.println("get User By Username Query failed : "+e.getMessage());
			 log.error("get User By Username Query failed : " + e.getMessage());
			 e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<User> findUserByRole(String role) {
		try {System.out.println("find user by role method in dao .............");
			return getJdbcTemplate().query(getUserByRole, new Object[] { role }, new UserRowMapper());
		} catch (Exception e) {
			System.out.println("get User By Role: "+e.getMessage());
			 log.error("get User By Role Query failed : " + e.getMessage());
			 e.printStackTrace();
			return null;
		}
	}
}
