package com.bundles;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;


@WebFilter("/BundlesFilter")
public class BundlesFilter extends HttpFilter implements Filter {
       
 
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public BundlesFilter() {
        super();
        
    }


	public void destroy() {

	}


	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
	   
	    if (request.getParameter("Action").equals("Edit"))
	        // pass the request along the filter chain
	        chain.doFilter(request, response);
	    if (request.getParameter("Action").equals("Delete"))
	        // pass the request along the filter chain
	        chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
