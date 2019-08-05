<!DOCTYPE HTML>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>SmartPortal | Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Shoppy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<!--js-->
<script src="js/jquery-2.1.1.min.js"></script> 
<!--icons-css-->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!--Google Fonts-->
<link href='//fonts.googleapis.com/css?family=Carrois+Gothic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Work+Sans:400,500,600' rel='stylesheet' type='text/css'>
<!--static chart-->
<script src="js/Chart.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<!--//charts-->
<!-- geo chart -->
    <script src="//cdn.jsdelivr.net/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
    <script>window.modernizr || document.write('<script src="lib/modernizr/modernizr-custom.js"><\/script>')</script>
    <!--<script src="lib/html5shiv/html5shiv.js"></script>-->
     <!-- Chartinator  -->
    <script src="js/chartinator.js" ></script>
    <script type="text/javascript">

    </script>
<!--geo chart-->

<!--skycons-icons-->
<script src="js/skycons.js"></script>
<!--//skycons-icons-->
</head>
<style>
    .table-wrapper {
        margin-top: 50px;
    }

    .player-img {
        width: 40px;
        height: 40px;
    }

    .add-player-form {
        margin-top: 50px;
    }
</style>
<body>
<div class="page-container">
<div class="page-wrapper">
     <nav class="navbar navbar-light bg-light">
        <span class="navbar-brand mb-0 h1" ><a href="/">Socka Players</a></span>
        <a class="float-right" href="/add" title="Add a New Player">Add a Player</a>
    </nav> 
</div>
<!-- Modal -->
  <div class="modal fade" id="editmodal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        
        <div class='row col-md-12'>
        
        <div class='col-md-6'>
         <div class="form-group">
         <label for="project">project:</label>
         <input type="text" class='form-control' id='project' name="project" placeholder="project" required="">
         </div>
         
           <div class="form-group">
         <label for="manager">manager:</label>
		 <input type="text" class='form-control' id='manager'  name="manager" class="lock" placeholder="manager">
		 </div>
		 </div>
		 
		    <div class='col-md-6'>
		    <div class="form-group">
         <label for="status">status:</label>
         
		    <input type="text" class='form-control'  id='status' name="status" class="lock" placeholder="status">
		    </div>
		    
		      <div class="form-group">
         <label for="progress">progress:</label>
		 <input type="text" class='form-control'  id='progress' name="progress" class="lock" placeholder="progress">
		    </div>
		    </div>
		    
		    
        </div>
        
		 
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
	<div class="col-md-12 chit-chat-layer1-left">
               <div class="table-wrapper">
                                <table class="table table-hover">
                                  <thead class="thead-dark" >
                                    <tr>
                                      <th scope="col">#</th>
                                      <th scope="col">Project</th>
                                      <th scope="col">Manager</th>                                   
                                      <th scope="col">Status</th>
                                      <th scope="col">Progress</th>
                                       <th></th>
                                  </tr>
                              </thead>
                              <tbody>
                           
                              <c:forEach  varStatus="loop" var="emp" items="${empList}">
                              <input type='hidden' name='data' id='data${loop.index}' value='${emp.project}@@${emp.status}@@${emp.progress}@@${emp.manager}'/>
                                <tr>
                                <td>${loop.count}</td>
                                  <td>${emp.project}</td>
                                    <td>${emp.manager}</td>
                                  <td><span class="label label-danger">${emp.status}</span></td>
                                  <td><span class="badge badge-info">${emp.progress}</span></td>
                                   <td><input type='button' class='btn btn-danger' onclick='deleteData("data${loop.index}")' value='delete'/><input class='btn btn-primary' onclick='editData("data${loop.index}");' type='button' value='edit'/></td>
                              </tr>
                     		</c:forEach>
                     		
                          </tbody>
                      </table>
      </div>
</div>
</body>
<script>
function editData(id){
$('#editmodal').modal('show');

var data = $('#'+id).val();

if(data!=null){
var dataSpl = data.split('@@');

$('#project').val(dataSpl[0]);
$('#manager').val(dataSpl[3]);
$('#status').val(dataSpl[1]);
$('#progress').val(dataSpl[2]);	




}


}
function deleteData(id){

}
</script>
</html>    