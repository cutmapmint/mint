/**
 * 
 */
package com.gtids.mint.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

/**
 * @author Acharya K
 *
 */
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter{

	@Autowired
	DataSource dataSource;

	@Autowired
	public void configAuthentication(AuthenticationManagerBuilder auth) throws Exception {

		auth.jdbcAuthentication().dataSource(dataSource)
				.usersByUsernameQuery("select username,password, enabled from user where username=?")
				.authoritiesByUsernameQuery("select username, role from user_roles where username=?");
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {

		// .antMatchers("/db/**").access("hasRole('ADMIN') and hasRole('DBA')")

		http.authorizeRequests().antMatchers("/admin/**").access("hasRole('ROLE_ADMIN')").antMatchers("/mngr/**")
				.access("hasRole('ROLE_MANAGER')").antMatchers("/bkmgr/**")
				.access("hasRole('ROLE_BKMANAGER')").antMatchers("/supervisor/**")
				.access("hasRole('ROLE_SUPERVISOR')").antMatchers("/agent/**")
				.access("hasRole('ROLE_AGENT')").antMatchers("/va/**")
				.access("hasRole('ROLE_VAGENT')").and().formLogin().loginPage("/login").failureUrl("/login?error")
				.usernameParameter("username").passwordParameter("password").and().logout()
				.logoutSuccessUrl("/login?logout").and().exceptionHandling().accessDeniedPage("/403").and().csrf().disable();
		http.headers().frameOptions().sameOrigin();
	}
	
}
