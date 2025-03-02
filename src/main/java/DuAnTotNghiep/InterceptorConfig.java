package DuAnTotNghiep;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import DuAnTotNghiep.interceptor.GlobalInterceptor;

@Configuration
public class InterceptorConfig implements WebMvcConfigurer{

	@Autowired GlobalInterceptor globalInterceptor;
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(globalInterceptor)
			.addPathPatterns("/**")
			.excludePathPatterns("/rest/**", "/admin/**", "/store/**", "/tintuc/**");
	}
	
	@Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/admin/indexAdmin").setViewName("forward:/admin/indexAdmin.html");
        registry.addViewController("/store/indexStore").setViewName("forward:/store/indexStore.html");
    }
}
