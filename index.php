<?php

function printregel($text) {
    echo $text . "<br>" . PHP_EOL;
}

// kijk of er een location_id is meegegeven in de URL
// http://localhost/index.php?location_id=3
if ( isset ( $_GET['location_id']) ) {
    $id = $_GET['location_id'];
    printregel( 'Locatie: ' . $id);
}
else
{
    printregel( 'Geen locatie meegegeven. Voorbeeld: <a href="http://localhost/avontuur_simpel/index.php?location_id=1">http://localhost/avontuur_simpel/index.php?location_id=1</a>');
    exit;
}

// maak verbinding met de database
$mysqli = new mysqli('localhost', 'avontuur_simpel', 'welkom', 'avontuur_simpel');
if ($mysqli->connect_errno) {
    printregel("Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error);
}
else {
    printregel("Connected");
}

// haal uit de database de title, image en description van de gevraagde locatie.
$sql = "SELECT * FROM locations WHERE id=" . $id . ";";
$results = $mysqli->query($sql);
if ( $results->num_rows == 1) {
    $record = $results->fetch_assoc();
    printregel($record['id']);
    printregel($record['title']);
    printregel('<img src="' . $record['image'] . '">');
    printregel($record['description']);
}

// haal uit de database de mogelijke bestemming op en geef ze weer als linkjes
$sql = "SELECT * FROM choices WHERE from_id=" . $id . ";";
$results = $mysqli->query($sql);
while ( $record = $results->fetch_assoc() ) {
    printregel( '<a href="index.php?location_id=' . $record['to_id'] . '">' . $record['title'] . '</a>' );
}
