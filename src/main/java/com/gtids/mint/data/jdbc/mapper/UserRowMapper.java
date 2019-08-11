/**
 * 
 */
package com.gtids.mint.data.jdbc.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.gtids.mint.data.dto.User;

/**
 * @author Acharya K
 *
 */
public class UserRowMapper implements RowMapper<User>{

	@Override
	public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		User user = new User();
		user.setUserId(rs.getInt("user_id"));
		user.setUsername(rs.getString("username"));
		user.setPassword(rs.getString("password"));
		user.setEnabled(rs.getInt("enabled"));
		user.setEmailId(rs.getString("email_id"));
		user.setMobile(rs.getString("mobile"));
		user.setImei(rs.getString("imei"));
		
		user.setBank(rs.getString("bank"));
		user.setBranchCode(rs.getInt("branch_code"));
		user.setCity(rs.getString("city"));
		user.setCreatedDate(rs.getString("created_date"));
		
		user.setAadharNo(rs.getString("aadhar_no"));
		return user;
	}

}
