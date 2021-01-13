


<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Create Record</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
    <style type="text/css">
        .wrapper{
            width: 500px;
            margin: 0 auto;
        }
    </style>
</head>
<body>

    <div class="wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="page-header">
                        <h2>Create Record</h2>
                    </div>
                    <p>Please fill this form and submit to add employee record to the database.</p>
                    <form action="create.php" method="post">
                        <div class="form-group <?php //echo (!empty($name_err)) ? 'has-error' : ''; ?>">
                            <label>Name</label>
                            <input type="text" name="name" class="form-control" value="<?php //echo $name; ?>">
                           
                            <label>address</label>
                            <input type="text" name="address" class="form-control" value="<?php //echo $name; ?>">
                            
                            <label>description</label>
                            <input type="text" name="description" class="form-control" value="<?php //echo $name; ?>">
                            
                            <label>area</label>
                            <input type="text" name="area" class="form-control" value="<?php //echo $name; ?>">
                            

                            <label>note 1</label>
                            <input type="text" name="note1" class="form-control" value="<?php //echo $name; ?>">
                            

                            <label>note2</label>
                            <input type="text" name="note2" class="form-control" value="<?php //echo $name; ?>">
                            
                            <span class="help-block"><?php// echo $name_err;?></span>
                        </div>
                    
                   
                        <input type="submit" name="submit" class="btn btn-primary" value="submit">
                        <a href="index.php" class="btn btn-default">Cancel</a>
                    </form>
                </div>
            </div>        
        </div>
    </div>
</body>



<?php

include("db.php");
include("auth_session.php");

$name="";
$address="";
$description="";
$area="";
$note1="";
$note2="";
$id="";
$err="";



if( isset($_REQUEST["name"]) && $_REQUEST["name"] !='' && isset($_POST['submit'])){
    
    $name=trim($_REQUEST["name"]);

    if($_REQUEST["address"]==''){echo 'Please fill the address'; exit();}else {$address=trim($_REQUEST["address"]);}
    
    $description=trim($_REQUEST["description"]);
    $area=trim($_REQUEST["area"]);
    $note1=trim($_REQUEST["note1"]);
    $note2=trim($_REQUEST["note2"]);

    $id=$_SESSION['id'];
    $query="INSERT INTO products (fname,available,address,description,area,note1,note2,userid) values ('".$name."','y','".$address."','".$description."','".$area."','".$note1."','".$note2."',$id)";
    $sql=mysqli_query($con,$query);
    
}

else{


   // echo 'fill the name';
}



//echo $query="INSERT INTO products (fname,available,userid) values ('".$name."','y',5)";

//$sql=($con,$query);

//if(mysqli_query($con,$query)){

    //header("location:dashboard.php");
    //exit();
//}



?>
</html>
