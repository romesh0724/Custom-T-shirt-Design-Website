<?php
include 'config.php';
?>
<!doctype html>
<html>
    <head>
        <title>Submit The Design</title>
        <link href="css/crudstyles.css" rel="stylesheet" type="text/css"/>
		<style>
		body{
		
		background-image:url('5.jpg');									
		background-repeat:no-repeat;
		background-attachment:fixed;
		background-size:100% 100%;
		
		}
		</style>
		
	
    </head>
    <body>
        <div class="container">
            <div class="left">
                <?php require 'menu.php'; ?>
            </div>
            <div class="right">
			<center>
                <form class="insert" id="empform" action="" enctype="multipart/form-data">
                    <table cellspacing="20">
                        <tr>
                            <th colspan="2"><center>Final Step - Submit The Design</center></th>
                        </tr>
						
                        <tr>
						
                            <td>Design Number</td>
                            <td><input type="text" name="empid" id="empid" /></td>
							
                        </tr>
                        <tr>
                            <td>User Name</td>
                            <td><input type="text" name="empname" id="empname" /></td>
                        </tr>
                        <tr>
                            <td>User Email</td>
                            <td><input type="email" name="empemail" id="empemail" /></td>
                        </tr>
                        <tr>
                            <td>3d/Custom Photo</td>
                            <td><input type="file" name="profilepic" id="profilepic" /></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><button class="sbtn" name="submit" id="submit" value="create">Submit</button></td>
                        </tr>
                    </table>
                </form>
				
				</center>
            </div>
        </div>
        <script src="js/jquery-3.6.0.min.js" type="text/javascript"></script>
        <script src="js/myscript.js" type="text/javascript"></script>

    </body>
</html>

