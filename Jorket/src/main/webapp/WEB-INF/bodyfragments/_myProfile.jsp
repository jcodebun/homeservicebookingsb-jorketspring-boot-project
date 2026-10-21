<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%> 
<c:url var="imageUrl" value="/user/image?id=" />
<c:url var="kycUrl" value="/user/kyc?id=" />   
<div class="container mt-2" style="position: relative; min-height: 100vh">
<div class="card" >
  <div class="card-body bg-header">
    <h5 class="card-title text-center ">My Profile</h5>
    <hr>
     <b><%@ include file="businessMessage.jsp"%></b>
    <sf:form method="post" action="${pageContext.request.contextPath}/home/login/myprofile" enctype="multipart/form-data" modelAttribute="form"><br/>
    <div class="row text-center">
				<div class="form-outline mt-2 ">
							<s:bind path="image">
								<c:if test="${sessionScope.user.roleId==1 }">
								<img src="${pageContext.request.contextPath}/resources/images/icon.png" class="rounded" width="155" >
								</c:if>
								<c:if test="${sessionScope.user.roleId==2 || sessionScope.user.roleId==3}">
								<img src="${imageUrl} ${sessionScope.user.id}" class="rounded" width="155" >
								</c:if>
								<font color="red" style="font-size: 13px"><sf:errors
										path="${status.expression}" /></font>
							</s:bind>

						</div>
				</div>
    <div class="row">
    	<div class="col-lg-6">
    		<div class="form-outline ">
            <s:bind path="firstName">
						<label for="inputEmail4" class="form-label">First Name</label>
						<sf:input path="${status.expression}"
							placeholder="Enter First Name" class="form-control" />
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
		    </s:bind>
              
            </div>
    	</div>
    	<div class="col-lg-6">
    	<div class="form-outline ">
            <s:bind path="lastName">
						<label for="inputEmail4" class="form-label">Last Name</label>
						<sf:input path="${status.expression}"
							placeholder="Enter Last Name" class="form-control" />
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
		    </s:bind>
              
            </div>
    	</div>
    </div>
    <!-- IInd row starts -->
    <div class="row">
    	<div class="col-lg-6">
    		<div class="form-outline ">
            <s:bind path="login">
						<label for="inputEmail4" class="form-label">Login</label>
						<sf:input path="${status.expression}"
							placeholder="Enter Email Id" class="form-control" />
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
		    </s:bind>
              
            </div>
    	</div>
    	<div class="col-lg-6">
    	<div class="form-outline ">
            <s:bind path="mobileNo">
						<label for="inputEmail4" class="form-label">Contact No</label>
						<sf:input path="${status.expression}"
							placeholder="Enter Contact No." class="form-control" />
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
		    </s:bind>
              
            </div>
    	</div>
    </div>
    <!-- IInd row Ends -->
    <div class="row">
    	<div class="col-lg-6">
    		<div class="form-outline ">
            <s:bind path="password">
						<label for="inputEmail4" class="form-label">Password</label>
						<sf:input type="password" path="${status.expression}"
							 class="form-control" />
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
		    </s:bind>              
            </div>            
    	</div>
    	<div class="col-lg-6">
    		<div class="form-outline ">
            <s:bind path="gender">
						<label for="inputEmail4" class="form-label">Gender</label>
						<sf:select class="form-control" path="${status.expression}">
									<sf:option value="" label="---Select---" />
									<sf:options   items="${gender}" />
								</sf:select>
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
		    </s:bind>
              
            </div>
    	</div>
    	
    </div>
    <!-- IIIrd row Starts -->
    
    <!-- IVnd row Ends -->
    <div class="row">
    	<div class="col-lg-6">
    		<div class="form-outline ">
            <s:bind path="state">
						<label for="inputEmail4" class="form-label">State</label>
						<sf:input  path="${status.expression}"
							 class="form-control" />
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
		    </s:bind>              
            </div>            
    	</div>
    	<div class="col-lg-6">
    		<div class="form-outline ">
            <s:bind path="city">
						<label for="inputEmail4" class="form-label">City</label>
						<sf:input  path="${status.expression}"  class="form-control" />
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
		    </s:bind>
              
            </div>
    	</div>
    	
    </div>
    <!-- IVrd row Starts -->
        
    <!-- V row starts -->
     <div class="row">
    	<div class="col-lg-6">
    		<div class="form-outline ">
            <s:bind path="address">
						<label for="inputEmail4" class="form-label">Address</label>
						<sf:textarea path="${status.expression}"
							 class="form-control" />
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
		    </s:bind>              
            </div>            
    	</div>
    	<c:if test="${sessionScope.user.roleId == 2 }">
    	<div class="col-lg-6">
    		<div class="form-outline ">
            <s:bind path="skill1">
						<label for="inputEmail4" class="form-label">Skill1</label>
						<sf:select class="form-control" path="${status.expression}">
									<sf:option value="" label="---Select---" />
									<sf:options   items="${skills}" /></sf:select>
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
		    </s:bind>              
            </div>            
    	</div>
    	</div>	
    <!-- V row ends -->
    
    <!-- V row start -->
    <div class="row">
    	<div class="col-lg-3">
    		<div class="form-outline ">
             <s:bind path="skill2">
						<label for="inputEmail4" class="form-label">Skills 2</label>
						<sf:select class="form-control" path="${status.expression}">
									<sf:option value="" label="---Select---" />
									<sf:options   items="${skills}" /></sf:select>
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
		    </s:bind>
              
            </div>
    	</div>
    	<div class="col-lg-3">
    		<div class="form-outline ">
             <s:bind path="skill_3">
						<label for="inputEmail4" class="form-label">Skills 3</label>
						<sf:select class="form-control" path="${status.expression}">
									<sf:option value="" label="---Select---" />
									<sf:options   items="${skills}" /></sf:select>
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
		    </s:bind>
              
            </div>
    	</div>
    	<div class="col-lg-3">
    	<div class="form-outline ">
            <s:bind path="skill_4">
						<label for="inputEmail4" class="form-label">Skills 4</label>
						<sf:select class="form-control" path="${status.expression}">
									<sf:option value="" label="---Select---" />
									<sf:options   items="${skills}" /></sf:select>
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
		    </s:bind>
              
            </div>
    	</div>
    	<div class="col-lg-3">
    	<div class="form-outline ">
            <s:bind path="skill_5">
						<label for="inputEmail4" class="form-label">Skills 5</label>
						<sf:select class="form-control" path="${status.expression}">
									<sf:option value="" label="---Select---" />
									<sf:options   items="${skills}" /></sf:select>
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
		    </s:bind>
              
            </div>
    	</div>
    	
    </div>
    <!-- Pay link starts-->
    <div class="row">
    <div class="col-lg-6">
    	<div class="form-outline mt-2">
            <s:bind path="kyc">
						<label for="inputEmail4" class="form-label">Upload KYC</label>
						<%-- <sf:input type="file" path="${status.expression}"
							class="form-control" required="required" /> --%>
							<a class="btn btn-sm btn-primary fw-bold" target="_blank" href="${kycUrl}${sessionScope.user.id}">Download</a>
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
		    </s:bind>
              
            </div>
    	</div>
    <div class="col-lg-6">
    <div class="form-outline ">
            <s:bind path="paymentLink">
						<label for="inputEmail4" class="form-label">Payment Link</label>
						<sf:input type="text" placeholder="Enter Payment Link"  path="${status.expression}"
						  class="form-control" />
						 
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
		    </s:bind>
              
            </div>
    </div>	
    </div>
    <!-- Pay link ends -->
    </c:if>
    <!-- V row ends -->
    <!-- Vth rows ends -->
    <div class="form-check d-flex justify-content-center mb-4 mt-2">
             <input type="submit" name="operation"
						class="btn btn-primary btn-lg pull-right" value="Save"> &nbsp; <input
						type="submit" name="operation" class="btn btn-primary btn-lg pull-right"
						value="Reset">
            </div>
    </sf:form>
  </div>
</div>
</div>