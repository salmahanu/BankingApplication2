<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>     
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>     
<h1>Display All Student  Details</h1>   
<table border="2" width="70%" cellpadding="2">   
   <tr> 
        <th>Account No</th> 
        <th>Name</th> 
        <th>Password</th> 
        <th>CPassword</th> 
        <th>Amount</th> 
        <th>Address</th> 
        <th>Mobile_No</th> 
        <th>Status</th> 
        <th>EDIT</th> 
        <th>DELETE</th> 
    </tr> 
     
   <tr>   
        <td>${bank.acno}</td>   
        <td>${bank.name}</td>  
        <td>${bank.password}</td>    
        <td>${bank.cpassword}</td>   
        <td>${bank.amount}</td>  
        <td>${bank.address}</td>  
        <td>${bank.mobile_no}</td>
        <td>${bank.status}</td> 
        
        
   
    </tr>   
     
   </table>   
   <a href="/">home Page</a> 
   </body>