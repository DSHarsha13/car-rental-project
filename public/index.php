<?php
// Simple homepage for Car Rental Project
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Car Rental System</title>
    <link rel="stylesheet" href="assets/css/styles.css" />
</head>
<body>
    <header>
        <img src="assets/images/logo.png" alt="Car Rental Logo" class="logo" />
        <h1>Welcome to Car Rental System</h1>
        <nav>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">Cars</a></li>
                <li><a href="#">Bookings</a></li>
                <li><a href="#">Login</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <h2>Available Cars</h2>
        <p>This is where the list of cars will appear from the database.</p>
        <button id="testBtn">Click Me</button>
    </main>

    <footer>
        <p>&copy; <?php echo date("Y"); ?> Car Rental Project. All rights reserved.</p>
    </footer>

    <script src="assets/js/script.js"></script>
</body>
</html>
