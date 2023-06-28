<?php

// Initialize variables
$tides = 0;
$isRising = true;

// Start the loop
for ($i=0; $i < 2000; $i++){
	// Check if the tide should be rising or falling
	if($tides >= 10){
		$isRising = false;
	}
	if($tides <= 0){
		$isRising = true;
	}

	// Calculate the new tide level
	if($isRising){
		$tides++;
	} else {
		$tides--;
	}

	// Output the new tide level
	echo "Tide level: " . $tides . "\n";
}

echo "The tides have changed!";

?>