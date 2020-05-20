package edu.ms.uncc.alumni.configuration;

import java.util.Properties;
import java.util.concurrent.Executor;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
@EnableAsync
public class AppConfig {

	@Bean(name = "asyncExecutor")
	public Executor asyncExecutor() {
		ThreadPoolTaskExecutor executor = new ThreadPoolTaskExecutor();
		executor.setCorePoolSize(2);
		executor.setMaxPoolSize(2);
		executor.setQueueCapacity(100);
		executor.setThreadNamePrefix("AsynchThread-");
		executor.initialize();
		return executor;
	}

	@Bean
	public DataSource getDataSource() {
		DriverManagerDataSource dataSourceBuilder = new DriverManagerDataSource();
		dataSourceBuilder.setDriverClassName("com.mysql.cj.jdbc.Driver");
		dataSourceBuilder.setUrl(
				"jdbc:mysql://spring2020mahalavanya.cwl7tt3c7epe.us-east-2.rds.amazonaws.com:3306/Alumni?useSSL=false&allowPublicKeyRetrieval=true");
		dataSourceBuilder.setUsername(System.getProperty("database.username"));
		dataSourceBuilder.setPassword(System.getProperty("database.password"));
		return dataSourceBuilder;
	}

	@Bean
	public LocalContainerEntityManagerFactoryBean entityManagerFactory(DataSource dataSource) {
		LocalContainerEntityManagerFactoryBean entityManagerFactoryBean = new LocalContainerEntityManagerFactoryBean();
		entityManagerFactoryBean.setDataSource(dataSource);
		entityManagerFactoryBean
				.setPackagesToScan(new String[] { "edu.ms.uncc.alumni.repository", "edu.ms.uncc.alumni.model" });
		JpaVendorAdapter vendorAdapter = new HibernateJpaVendorAdapter();
		entityManagerFactoryBean.setJpaVendorAdapter(vendorAdapter);
		Properties properties = new Properties();
		properties.setProperty("spring.jpa.hibernate.ddl-auto", "update");
		properties.setProperty("spring.jpa.database-platform", "org.hibernate.dialect.MySQL5InnoDBDialect");
		properties.setProperty("spring.jpa.hibernate.naming.physical-strategy",
				"org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl");
		entityManagerFactoryBean.setJpaProperties(properties);
		return entityManagerFactoryBean;
	}

	@Bean
	public WebMvcConfigurer corsConfigurer() {
		return new WebMvcConfigurerAdapter() {
			@Override
			public void addCorsMappings(CorsRegistry registry) {
				registry.addMapping("/**").allowedOrigins("*").allowedMethods("GET", "POST", "PUT", "PATCH", "DELETE", "OPTIONS")
				.allowedHeaders("Authorization", "content-type").exposedHeaders("x-auth-token");
			}
		};
	}

}
