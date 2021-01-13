<?php



include("auth_session.php");
include("db.php");

$c= $_SESSION['id'];
//echo 'profile page';


 $sql="SELECT * FROM `usersinfo` where usersinfoid='$c'";


$result=mysqli_query($con,$sql);
$raw=mysqli_fetch_array($result);

//echo $raw['id'];

?>




<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post" enctype="multipart/form-data">
    Select Image File to Upload:
    <input type="file" name="file">
    <input type="submit" name="submit" value="Upload">
</form>
<?php
$statusMsg = '';

// File upload path
$targetDir = "uploads/";
$fileName = basename($_FILES["file"]["name"]);
$targetFilePath = $targetDir . $fileName;
$fileType = pathinfo($targetFilePath,PATHINFO_EXTENSION);

if(isset($_POST["submit"]) && !empty($_FILES["file"]["name"])){
    // Allow certain file formats
    $allowTypes = array('jpg','png','jpeg','gif','pdf');
    if(in_array($fileType, $allowTypes)){
        // Upload file to server
        if(move_uploaded_file($_FILES["file"]["tmp_name"], $targetFilePath)){
            // Insert image file name into database
              $insert ="UPDATE `usersinfo` set file_name = '".$fileName."' WHERE usersinfoid =5";
            $result2 = mysqli_query($con,$insert);
             



            if($insert){
                $statusMsg = "The file ".$fileName. " has been uploaded successfully.";
            }else{
                $statusMsg = "File upload failed, please try again.";
            } 
        }else{
            $statusMsg = "Sorry, there was an error uploading your file.";
        }
    }else{
        $statusMsg = 'Sorry, only JPG, JPEG, PNG, GIF, & PDF files are allowed to upload.';
    }
}else{
    $statusMsg = 'Please select a file to upload.';
}

// Display status message
//echo $statusMsg;

?>




<?php

 $sql4="SELECT * FROM `usersinfo` where usersinfoid=5";


$result4=mysqli_query($con,$sql4);
 $row=mysqli_fetch_array($result4);

// echo 'shadi'.$row["id"];

$imageURL = 'uploads/'.$row["file_name"];
?>

<img src="<?php echo $imageURL; ?>" alt="" />