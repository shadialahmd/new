<?php
require('db.php');

$sql="SELECT * from `products` ";
$result=mysqli_query($con,$sql);

if(mysqli_num_rows($result)>0){
   

    while($row=mysqli_fetch_array($result)){
        echo "<div style='margin-right: auto;margin-left: auto;width:650px;height:200px;background-color:#e4c7c7;margin-bottom:10px'>";
        echo "<span style='font-size: 27px;padding:10px'> Name: ";
        echo $row['fname']."</span> ";
        echo "<span style='padding:10px;float:right'>100 AED/ Hours</span><br/>";
        
        echo "address: ".$row['address']."</br>";
        echo "description :".$row['description']."</br>";
        echo "area :".$row['area']."</br>";
        echo "Note1 :".$row['note1']."</br>";
        echo "Note2 :".$row['note2']."</br>";
        echo "</div>";
        

    }

}




/*old table view
if(mysqli_num_rows($result)>0){
    echo "<table class='table table-bordered table-striped'>";
    echo "<thead>";
        echo "<tr>";
            echo "<th>#</th>";
            echo "<th>Name</th>";
            echo "<th>available</th>";
            echo "<th>user</th>";
            echo "<th>Action</th>";
        echo "</tr>";
    echo "</thead>";
    echo "<tbody>";
    while($row=mysqli_fetch_array($result)){

        echo "<tr>";

        echo "<td>". $row['productID']."</td>";
        echo "<td>". $row['fname']."</td>";
        echo "<td>". $row['available']."</td>";
        echo "<td>". $row['userid']."</td>";
        echo "<td>edit / delete </td>";

        echo "</tr>";


    }
}*/

?>