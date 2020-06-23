<?
  // Login PHP Script
  // Author: S Kim, M Brydon, S Canfield

  // Allow console writing
  function debug_to_console($data) {
    $output = $data;
    if (is_array($output))
      $output = implode(',', $output);

    echo "<script>console.log('Debug Objects: " . $output . "');</script>";
  }

  function died($error) {
    echo '<script type="text/javascript">
    alert("Sorry, but errors occurred: - '.$error.' please correct these errors.");
    window.history.back();
    </script>';
    die();
  }

  // Create database connection
  $link = mysqli_connect("localhost", "mvwater-admin", "b7VW29LJyAyDbr3sBMsrSfr4uCZbXUHMcYWdGES3878C4pgpJkUwN9whRdPMYKY9c5UZhgCL7TKHGbjsT8WdCAXAaa84yzenXVmXHjGmSKmfP7N9GHxcR3g8ANTbtwRs", "accountctrl"); // (database, usename, password, schema)
  // Connect and check connection
  if (mysqli_connect_errno()) {
    died("Connection failed: " . $link->connect_error);
  }

  // Check to see if all of the fields are filled
  if (!isset($_POST['username']) ||
  !isset($_POST['password'])) {
    debug_to_console($_POST['username']);
    debug_to_console("Password not shown.");
    died('There seems to be a problem with what was submitted.');
  }

  // Sanitize database inputs
  // Little Bobby Tables won't get us this time!
  $username = mysqli_real_escape_string($link, $_POST['username'] );
  $password = mysqli_real_escape_string($link, $_POST['password']);
  // Salt the password for sending
  // Usage: password_hash ( string $password , mixed $algo [, array $options ] ) : string
  // Usage docs: https://www.php.net/manual/en/function.password-hash.php
  $algo = PASSWORD_DEFAULT; // Should be stored as a 255-char varchar
  $salted = password_hash( string $password, $algo ) : string;

  $error_message = "";

  // Form SQL statement
  $sql = "SELECT DISTINCT username
  FROM accountctrl
  WHERE username = $username
  AND password = $salted"; // SELECT DISTINCT column-name FROM table-name WHERE condition;
  // Should return exactly 1 if the username and password are correct

  // Check SQL query and result
  if (mysqli_query($link, $sql) == 1 ) {
    debug_to_console("Record found and exact match.");
    // Do something like make cookie here to denote a valid session
    // @Michaela knows more about cookies now than me
    // Put your JavaScript for the client-side here:
    echo
    '
    <script>
    // JavaScript to create an authenticated session goes here
    </script>
    ';
  } else {
    debug_to_console("Exact record not found.");
    echo
    '
    <script>
    //Authentication failure
    alert("Authentication Failure\nPlease check your username and password!");
    </script>
    ';
  }

  // Close MySQL database connection
  mysqli_close($link);
?>
