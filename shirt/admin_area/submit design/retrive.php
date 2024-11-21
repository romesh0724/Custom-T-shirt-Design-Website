<?php
include 'config.php';
?>
<!doctype html>
<html>
    <head>
        <title>Upload Designs</title>
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
                <?php require 'menu 2.php'; ?>
            </div>
            <div class="right">
                <?php
                $query = "SELECT * from emp";
                $result = mysqli_query($link, $query);
                if (mysqli_num_rows($result) > 0) {
                    ?>
                    <h3></h3>
                    <table class="emplist">
                        <thead>
                            <tr>
                                <th>Design Number</th>
                                <th>User Name</th>
                                <th>User Email</th>
                                <th>Design Image</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            while ($row = mysqli_fetch_assoc($result)) {
                                ?>
                                <tr>
                                    <td><?= $row['id'] ?></td>
                                    <td><?= $row['name'] ?></td>
                                    <td><?= $row['email'] ?></td>
                                    <td><img src="<?= $row['profilepic'] ?>" width="250" height="200"></td>
                                    <td>
                                        <a href="edit.php?empid=<?= $row['id'] ?>">Edit</a> | 
                                        <a href="javascript:void(0)" onclick="deleteFunction('<?= $row['id'] ?>',this)">Delete</a>
                                    </td>
                                </tr>

                                <?php
                            }
                            ?>
                        </tbody>
                    </table>

                    <?php
                } else {
                    echo 'Record Not found';
                }
                ?>
            </div>
        </div>

        <script src="js/jquery-3.6.0.min.js" type="text/javascript"></script>
        <script src="js/myscript.js" type="text/javascript"></script>

    </body>
</html>




