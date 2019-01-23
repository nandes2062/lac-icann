<?php
    date_default_timezone_set("America/La_Paz");
    header('content-type: text/html; charset: utf-8');
    $hora=date("H:i:s");
    $fecha=date("d/m/Y");
    $ip=$_SERVER['REMOTE_ADDR'];
    $data = json_decode(file_get_contents('php://input'), true);
    $nombre = $data["vue"]["nombre"];
    $telefono = $data["vue"]["telefono"];
    $movil = $data["vue"]["movil"];
    $direccion = $data["vue"]["direccion"];
    $ciudad = $data["vue"]["ciudad"];
    $mensaje = $data["vue"]["mensaje"];

    // $email_to = "nandes.ingsistemas@gmail.com";
    $email_to = "nandes.ingsistemas@gmail.com";
    
    $email_from = $data["vue"]["email"];

    $subject = "Mensaje desde la web ...";

    $body = 'Nombre: '.$nombre."<br>";
    $body .= 'Teléfono: '.$telefono."<br>";
    $body .= 'Teléfono móvil: '.$movil."<br>";
    $body .= 'Dirección: '.$direccion."<br>";
    $body .= 'Ciudad: '.$ciudad."<br>";
    $body .= 'E-mail: '.$email_from."<br>";
    $body .= 'Mensaje: '.$mensaje."<br>";
    $body .= '---------------------'."<br>";
    $body .= 'Hora y fecha de envío: El '.$fecha.' a las '.$hora."<br>";
    $body .= 'IP del remitente: '.$ip;

    $headers = 'From: '.$email_from."\r\n";
    $headers .= 'MIME-Version: 1.0' ."\r\n";
    $headers .= 'Content-Type: text/HTML; charset=utf-8' ."\r\n";

    if( mail($email_to, $subject, $body, $headers) ){
        echo "Su solicitud fue enviada correctamente, le responderemos en breve";
    }
    else{
        echo "Su solicitud no puso ser enviada, intentelo de nuevo mas tarde";
    }
