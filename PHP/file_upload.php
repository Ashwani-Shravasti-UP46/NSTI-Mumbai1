<?php
/*
=====================================================
PRACTICAL: Simple PHP File Upload + Download (Single File)
=====================================================

AIM:
- Very simple page to upload a file and list all files
  with direct download links (no extra scripts).

STEPS:
- Save as: upload_simple.php
- Create folder "uploads" (or script will create it)
- Open: http://localhost/upload_simple.php
=====================================================
*/
?>

<?php
// ---------- BASIC SETUP ----------
$UPLOAD_DIR = __DIR__ . '/uploads';
if (!is_dir($UPLOAD_DIR)) { @mkdir($UPLOAD_DIR, 0775, true); }

$msg = "";

// ---------- HANDLE UPLOAD ----------
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_FILES['file'])) {
  if ($_FILES['file']['error'] === UPLOAD_ERR_OK) {
    $orig = basename($_FILES['file']['name']);     // original name
    if ($orig === '') {
      $msg = "Please choose a file.";
    } else {
      // Make stored name unique (timestamp + original)
      $stored = time() . '_' . preg_replace('/\s+/', '_', $orig);
      $dest   = $UPLOAD_DIR . '/' . $stored;

      if (move_uploaded_file($_FILES['file']['tmp_name'], $dest)) {
        $msg = "Uploaded: " . htmlspecialchars($orig);
      } else {
        $msg = "Failed to upload.";
      }
    }
  } else {
    $msg = "Upload error (code: " . (int)$_FILES['file']['error'] . ")";
  }
}

// ---------- GET FILE LIST ----------
$files = [];
if (is_dir($UPLOAD_DIR)) {
  foreach (scandir($UPLOAD_DIR) as $f) {
    if ($f === '.' || $f === '..') continue;
    $full = $UPLOAD_DIR . '/' . $f;
    if (is_file($full)) {
      $files[] = $f;
    }
  }
}
// Newest first
rsort($files);
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Simple Upload & Download</title>
</head>
<body>
  <h1>Simple File Upload</h1>

  <?php if ($msg): ?>
    <p><?php echo htmlspecialchars($msg); ?></p>
  <?php endif; ?>

  <form method="post" enctype="multipart/form-data">
    <input type="file" name="file" required>
    <button type="submit">Upload</button>
  </form>

  <hr>

  <h2>Files</h2>
  <?php if (!empty($files)): ?>
    <table border="1" cellpadding="6" cellspacing="0">
      <tr><th>#</th><th>Stored Name</th><th>Download</th></tr>
      <?php foreach ($files as $i => $f): ?>
        <tr>
          <td><?php echo $i + 1; ?></td>
          <td><?php echo htmlspecialchars($f); ?></td>
          <td>
            <a href="<?php echo 'uploads/' . rawurlencode($f); ?>" download>Download</a>
          </td>
        </tr>
      <?php endforeach; ?>
    </table>
  <?php else: ?>
    <p>No files yet.</p>
  <?php endif; ?>

</body>
</html>
