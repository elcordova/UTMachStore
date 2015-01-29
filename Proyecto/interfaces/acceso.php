<?php
	SESSION_START();
	$_SESSION['usuario']='hola';

	header("location: /interfaces/index.aspx");
?>