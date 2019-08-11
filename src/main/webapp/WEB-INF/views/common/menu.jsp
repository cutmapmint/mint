<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- sidebar menu -->
<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                 
                <ul class="nav side-menu">
				
                <c:if test="${sessionScope.userdetails != 'null'}">
				<c:choose>
					<c:when test="${sessionScope.userdetails.role == 'ROLE_MANAGER'}">
				<li><a href="${pageContext.request.contextPath}/mngr/dsboard"><i class="fa fa-home"></i> Dashboard</a></li>
				
				<li><a><i class="fa fa-edit"></i> Customer Services <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="${pageContext.request.contextPath}/mngr/custDocDetails">Customer Details</a></li>
                      <li><a href="${pageContext.request.contextPath}/mngr/custSearch">Customer Search</a></li>
                      <li><a href="${pageContext.request.contextPath}/mngr/custHistory">Customer History</a></li>
                      <li><a href="${pageContext.request.contextPath}/mngr/custAppIssues">Cust App Issues</a></li>
                    </ul>
                  </li>	 
						
			<%-- 	  <li><a><i class="fa fa-edit"></i> Download Repo <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="${pageContext.request.contextPath}/ho/dep580">DEP0580</a></li>
                      <li><a href="${pageContext.request.contextPath}/ho/dep586">DEP0586</a></li>
                      <li><a href="${pageContext.request.contextPath}/ho/lon2390">LON2390</a></li>
                      <li><a href="${pageContext.request.contextPath}/ho/npa2572">NPA2572</a></li>
                      <li><a href="${pageContext.request.contextPath}/ho/npa2575">NPA2575</a></li>
                    </ul>
                  </li>	 --%>
                   
                    <li><a><i class="fa fa-edit"></i> Settings <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="${pageContext.request.contextPath}/mngr/changepwd">Change Password</a></li>
                    </ul>
                  </li>	
					</c:when>
					
					<c:when test="${sessionScope.userdetails.role == 'ROLE_BKMANAGER'}">
				<li><a href="${pageContext.request.contextPath}/bkmgr/dsboard"><i class="fa fa-home"></i> Dashboard</a></li>
				
				<li><a><i class="fa fa-edit"></i> Customer Services <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="${pageContext.request.contextPath}/bkmgr/custDocDetails">Customer Details</a></li>
                    </ul>
                  </li>	 
                   
                    <li><a><i class="fa fa-edit"></i> Settings <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="${pageContext.request.contextPath}/bkmgr/changepwd">Change Password</a></li>
                    </ul>
                  </li>	
					</c:when>
					
					 <c:when test="${sessionScope.userdetails.role == 'ROLE_SUPERVISOR'}">
						<li><a href="${pageContext.request.contextPath}/supv/dashboard"><i class="fa fa-home"></i> Dashboard 	</a></li>
				
				<li><a><i class="fa fa-edit"></i> MIS <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                    <li><a href="${pageContext.request.contextPath}/zone/deposit">Deposit</a></li>
                      <li><a href="${pageContext.request.contextPath}/zone/loan">Loan</a></li>
                      <li><a href="${pageContext.request.contextPath}/zone/npa">NPA</a></li>
                      <li><a href="${pageContext.request.contextPath}/zone/dbr">DBR</a></li>
                      <!-- <li><a href="form_upload.html">Form Upload</a></li>
                      <li><a href="form_buttons.html">Form Buttons</a></li> -->
                    </ul>
                  </li>	 
						
				  <li><a><i class="fa fa-edit"></i> Download Repo <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="form.html">DEP0586</a></li>
                      <li><a href="form_advanced.html">DEP0580</a></li>
                      <li><a href="form_validation.html">LON2390</a></li>
                      <li><a href="form_wizards.html">NPA2575</a></li>
                      <li><a href="form_wizards.html">NPA2572</a></li>
                    </ul>
                  </li>	
                   
                    <li><a><i class="fa fa-edit"></i> Settings <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="${pageContext.request.contextPath}/supv/changepwd">Change Password</a></li>
                    </ul>
                  </li>
					</c:when>
					<c:when test="${sessionScope.userdetails.role == 'ROLE_AGENT'}">
						<li><a href="${pageContext.request.contextPath}/agent/dsboard"><i class="fa fa-home"></i> Dashboard 	</a></li>
				
				<li><a><i class="fa fa-edit"></i>Customer Service <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                    
                      <%-- <li><a href="${pageContext.request.contextPath}/agent/loanDetails">Loan Details</a></li> --%>
                      
                      <li><a>Loan Origination<span class="fa fa-chevron-down"></span></a>
                          <ul class="nav child_menu">
                            <li class="sub_menu">
                            	<a href="${pageContext.request.contextPath}/agent/custCreation">Create Customer</a>
                            </li>
                             
                            
                          </ul>
                        </li>
                        
                       <li><a>Loan Mgmt<span class="fa fa-chevron-down"></span></a>
                          <ul class="nav child_menu">
                            <li class="sub_menu">
                            	<a href="${pageContext.request.contextPath}/agent/memberNewLoan">Loan Mgmt</a>
                            </li>
                            <li><a href="${pageContext.request.contextPath}/agent/loanDetails">Loans List</a>
                            </li>
                            
                          </ul>
                        </li>
                        
                      <%-- <li><a href="${pageContext.request.contextPath}/branch/loan">Loan</a></li>
                      <li><a href="${pageContext.request.contextPath}/branch/npa">NPA</a></li>
                      <li><a href="${pageContext.request.contextPath}/branch/dbr">DBR</a></li> --%>
                      <!-- <li><a href="form_upload.html">Form Upload</a></li>
                      <li><a href="form_buttons.html">Form Buttons</a></li> -->
                    </ul>
                  </li>	 
						
				  <li><a><i class="fa fa-edit"></i> Group Service <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="${pageContext.request.contextPath}/agent/group">Group Mgmt</a></li>
                      <li><a href="${pageContext.request.contextPath}/agent/member">Member Mgmt</a></li>
                      <li><a href="${pageContext.request.contextPath}/agent/meeting">Meeting Mgmt</a></li>
                    </ul>
                  </li>	
                   
                    <li><a><i class="fa fa-edit"></i> Settings <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="${pageContext.request.contextPath}/agent/changepwd">Change Password</a></li>
                    </ul>
                  </li>
					</c:when>
					<c:when test="${sessionScope.userdetails.role == 'ROLE_ADMIN'}">
						<li><a><i class="fa fa-home"></i> Home <span class="fa fa-chevron-down"></span></a>
	                    <ul class="nav child_menu">
	                      <li><a href="${pageContext.request.contextPath}/admin/dsboard">Dashboard</a></li>
	                      <li><a href="index2.html">Asdf</a></li>
	                      <li><a href="index3.html">Xyz</a></li>
	                    </ul>
                  		</li>
					</c:when>
					<c:when test="${sessionScope.userdetails.role == 'ROLE_VAGENT'}">
						<li><a href="${pageContext.request.contextPath}/va/dsboard"><i class="fa fa-home"></i> Dashboard </a></li>
				
				<li><a><i class="fa fa-edit"></i> Customer Service <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="${pageContext.request.contextPath}/va/custDocDetails">Customer Details</a></li>
                       <li><a href="${pageContext.request.contextPath}/va/appIssues">App Issues</a></li>
                    </ul>
                  </li>	
					</c:when>
				</c:choose>
				</c:if>

   <!--               
                  <li><a><i class="fa fa-edit"></i> Forms <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="form.html">General Form</a></li>
                      <li><a href="form_advanced.html">Advanced Components</a></li>
                      <li><a href="form_validation.html">Form Validation</a></li>
                      <li><a href="form_wizards.html">Form Wizard</a></li>
                      <li><a href="form_upload.html">Form Upload</a></li>
                      <li><a href="form_buttons.html">Form Buttons</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-desktop"></i> UI Elements <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="general_elements.html">General Elements</a></li>
                      <li><a href="media_gallery.html">Media Gallery</a></li>
                      <li><a href="typography.html">Typography</a></li>
                      <li><a href="icons.html">Icons</a></li>
                      <li><a href="glyphicons.html">Glyphicons</a></li>
                      <li><a href="widgets.html">Widgets</a></li>
                      <li><a href="invoice.html">Invoice</a></li>
                      <li><a href="inbox.html">Inbox</a></li>
                      <li><a href="calendar.html">Calendar</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-table"></i> Tables <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="tables.html">Tables</a></li>
                      <li><a href="tables_dynamic.html">Table Dynamic</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-bar-chart-o"></i> Data Presentation <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="chartjs.html">Chart JS</a></li>
                      <li><a href="chartjs2.html">Chart JS2</a></li>
                      <li><a href="morisjs.html">Moris JS</a></li>
                      <li><a href="echarts.html">ECharts</a></li>
                      <li><a href="other_charts.html">Other Charts</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-clone"></i>Layouts <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="fixed_sidebar.html">Fixed Sidebar</a></li>
                      <li><a href="fixed_footer.html">Fixed Footer</a></li>
                    </ul>
                  </li>
                </ul>
              </div>
              <div class="menu_section">
                <h3>Live On</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-bug"></i> Additional Pages <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="e_commerce.html">E-commerce</a></li>
                      <li><a href="projects.html">Projects</a></li>
                      <li><a href="project_detail.html">Project Detail</a></li>
                      <li><a href="contacts.html">Contacts</a></li>
                      <li><a href="profile.html">Profile</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-windows"></i> Extras <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="page_403.html">403 Error</a></li>
                      <li><a href="page_404.html">404 Error</a></li>
                      <li><a href="page_500.html">500 Error</a></li>
                      <li><a href="plain_page.html">Plain Page</a></li>
                      <li><a href="login.html">Login Page</a></li>
                      <li><a href="pricing_tables.html">Pricing Tables</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-sitemap"></i> Multilevel Menu <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                        <li><a href="#level1_1">Level One</a>
                        <li><a>Level One<span class="fa fa-chevron-down"></span></a>
                          <ul class="nav child_menu">
                            <li class="sub_menu"><a href="level2.html">Level Two</a>
                            </li>
                            <li><a href="#level2_1">Level Two</a>
                            </li>
                            <li><a href="#level2_2">Level Two</a>
                            </li>
                          </ul>
                        </li>
                        <li><a href="#level1_2">Level One</a>
                        </li>
                    </ul>
                  </li>                  
                  <li><a href="javascript:void(0)"><i class="fa fa-laptop"></i> Landing Page <span class="label label-success pull-right">Coming Soon</span></a></li> -->
                </ul>
              </div>

            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="#">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->