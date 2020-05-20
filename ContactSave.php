<?php
namespace Arden;

if($_SERVER['REQUEST_METHOD'] == 'POST') {
	$db = new \Mysqli('localhost', 'root', '', 'codetest');
	$name = $_POST['firstName'];
	$lname = $_POST['lastName'];
	$email = $_POST['email'];
    $message = $_POST['message'];
	$address = $_POST['address'];
	$aaddress2 = $_POST['address2'];
	$country =  $_POST['country'];
	$state =  $_POST['state'];
	$zip = $_POST['zip'];
	
	$name = $name.' '.$lname;
	$address = $address.' '.$aaddress2.' '.$country.' '.$state.' '.$zip;
	$sql = "INSERT INTO enquiry (email, address, message, enquired_at) VALUES ($email, $address, $message, '')";

	exit;
}
?>