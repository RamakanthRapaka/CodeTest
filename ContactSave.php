<?php
namespace Arden;

if($_SERVER['REQUEST_METHOD'] == 'POST') {
	$db = new \Mysqli('localhost', 'root', '', 'codetest');
	$name = $_POST['firstName'];
	$lname = $_POST['lastName'];
	$email = $_POST['email'];
    $message = $_POST['message'];
	$address = $_POST['address'];
	$aaddress2 = $_POST['addresss'];
	$country =  $_POST['country'];
	$state =  $_POST['state'];
	$zip = $_POST['zip'];
	
	$name = $name.' '.$lname;
	$address = $address.' '.$aaddress2.' '.$country.' '.$state.' '.$zip;
	
	mysqli_query($db,"INSERT INTO enquiry (`name`, `email`, `address`, `message`)
VALUES ('$name', '$email', '$address', '$message')")
or die(mysqli_error($db));
}
?>