/**
 * 
 */
package com.gtids.mint.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.annotation.PropertySources;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * @author Acharya K
 *
 */
@Configuration
@EnableTransactionManagement
@PropertySources({ @PropertySource("classpath:db.properties"), @PropertySource("classpath:mysql_query.properties"),
	@PropertySource("classpath:applicationContext.properties"), @PropertySource("classpath:apiurls.properties") })
public class DbConfig {


	@Autowired
	private Environment environment;

	@Bean(name = "dataSource")
	public DriverManagerDataSource getDataSource() {

		DriverManagerDataSource driverManagerDataSource = new DriverManagerDataSource();
		driverManagerDataSource.setDriverClassName(environment.getRequiredProperty("mysql.jdbc.driver"));
		driverManagerDataSource.setUrl(environment.getRequiredProperty("mysql.jdbc.url"));
		driverManagerDataSource.setUsername(environment.getRequiredProperty("mysql.jdbc.username"));
		driverManagerDataSource.setPassword(environment.getRequiredProperty("mysql.jdbc.password"));
		return driverManagerDataSource;
	}

	@Bean
	public static PropertySourcesPlaceholderConfigurer propertySourcesPlaceholderConfigurer() {
		return new PropertySourcesPlaceholderConfigurer();
	}

	@Bean(name = "transactionManager")
	public DataSourceTransactionManager getTransactionManager() {
		DataSourceTransactionManager txManager = new DataSourceTransactionManager();

		DataSource dataSource = this.getDataSource();
		txManager.setDataSource(dataSource);

		return txManager;
	}
}
