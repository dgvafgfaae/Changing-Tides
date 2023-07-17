// Create the canvas
var canvas = document.createElement("canvas");
var ctx = canvas.getContext("2d");
canvas.width = 512;
canvas.height = 480;
document.body.appendChild(canvas);

// Background image
var bgReady = false;
var bgImage = new Image();
bgImage.onload = function () {
	bgReady = true;
};
bgImage.src = "images/background.png";

// Fish image
var fishReady = false;
var fishImage = new Image();
fishImage.onload = function () {
	fishReady = true;
};
fishImage.src = "images/fish.png";

// Game objects
var fish = {
	speed: 256 // movement in pixels per second
};
var wave = {
	x: canvas.width,
	y: canvas.height / 4,
	width: 20,
	height: 10
};

// Handle keyboard controls
var keysDown = {};

addEventListener("keydown", function (e) {
	keysDown[e.keyCode] = true;
}, false);

addEventListener("keyup", function (e) {
	delete keysDown[e.keyCode];
}, false);

// Reset the game when the player catches a fish
var reset = function () {
	fish.x = canvas.width / 2;
	fish.y = canvas.height / 2;

	// Throw the wave somewhere on the screen randomly
	wave.x = canvas.width + Math.random() * 256;
	wave.y = Math.random() * (canvas.height - wave.height);
};

// Update game objects
var update = function (modifier) {
	if (37 in keysDown) { // Player holding left
		fish.x -= fish.speed * modifier;
	}
	if (39 in keysDown) { // Player holding right
		fish.x += fish.speed * modifier;
	}

	// Are they touching?
	if (
		fish.x <= (wave.x + wave.width)
		&& wave.x <= (fish.x + 32)
		&& fish.y <= (wave.y + wave.height)
		&& wave.y <= (fish.y + 32)
	) {
		++waveCaught;
		reset();
	}
};

// Draw everything
var render = function () {
	if (bgReady) {
		ctx.drawImage(bgImage, 0, 0);
	}

	if (fishReady) {
		ctx.drawImage(fishImage, fish.x, fish.y);
	}

	// Draw the wave
	ctx.fillStyle = "#F00";
	ctx.fillRect(wave.x, wave.y, wave.width, wave.height);
};

// The main game loop
var main = function () {
	var now = Date.now();
	var delta = now - then;

	update(delta / 1000);
	render();

	then = now;
};

// Let's play this game!
reset();
var then = Date.now();
setInterval(main, 1); // Execute as fast as possible