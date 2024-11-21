<?php
	$firstName = $_POST['firstName'];
	$lastName = $_POST['lastName'];
	$email = $_POST['email'];
	$number = $_POST['number'];

	// Database connection
	$conn = new mysqli('localhost','root','','ecom_store');
	if($conn->connect_error){
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
	} else {
		$stmt = $conn->prepare("insert into registration(firstName, lastName, email, number) values(?, ?, ?, ?)");
		$stmt->bind_param("sssi", $firstName, $lastName, $email,$number);
		$execval = $stmt->execute();	
	}
		?>
		
		
		
	<center>
    <div>
        <h1>Thank You, Your application has been accepted! We will contact you shortly.</h1>
        <button class="btn btn-primary">Go Back</button>
    </div>
		
	</center>

<script>
let btnBack = document.querySelector('button');
btnBack.addEventListener('click', () => {
    window.history.back();
});

</script>

