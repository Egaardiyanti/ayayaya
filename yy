<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Sederhana Hit Counter</title>
    <style>

.h2{
    background-color: rgb(238, 123, 190);
    color: beige;
    padding: 30px;
    border-radius: 12px;
}
.form{
    background-color: lightblue;
 margin-left: 25px;
    padding: 50px;
}
    </style>

</head>
<body>
    <center>
    <h2>FORM SEDERHANA DAN HIT COUNTER</h2>
    
    <!-- Form input, data dikirim dengan metode POST -->
    <form method="post">
        <!-- Input nama -->
        Nama  : <input type="text" name="nama" placeholder="Masukkan Nama" required=""><br><br>

        <!-- Input kelas -->
        NIM   : <input type="text" name="nim" placeholder="Masukkan nim" required=""><br><br>

        Prodi : <input type="text" name="prodi" placeholder="Masukkan prodi" required=""><br><br>


        <!-- Pilihan jenis kelamin dengan radio button -->
        Jenis Kelamin:<br>
        <input type="radio" name="jenis_kelamin" value="Laki-Laki" id="Laki-Laki">
        <label for="Laki-Laki">Laki-Laki</label><br>

        <input type="radio" name="jenis_kelamin" value="Perempuan" id="Perempuan">
        <label for="Perempuan">Perempuan</label><br>

        Alamat: <input type="text" name="alamat" placeholder="Masukkan alamat" required=""><br><br>

        <!-- Tombol kirim -->
        <input type="submit" value="Kirim">
    </form>

    <?php

$filecounter = "counter.txt";

$fl = fopen($filecounter, "r+");
$hit = (int)fread($fl, filesize($filecounter));
rewind($fl);
$hit = $hit + 1;
fwrite($fl, $hit);
fclose($fl);


if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nama = $_POST["nama"];
    $nim = $_POST["nim"];
    $prodi = $_POST["prodi"];
    $jenis_kelamin = $_POST["jenis_kelamin"];
    $alamat = $_POST["alamat"];
    echo"<center><h1> Data yang anda masukkan: </h1></center>";
    echo"<p>Nama: $nama<br> Nim: $nim<br> Prodi: $prodi<br> Jenis Kelamin: $jenis_kelamin<br> alamat: $alamat <br></p>";

echo "<table width=250 align=center border=1 cellspacing=0 cellpadding=0 bordercolor=#0000FF><tr>";
echo "<td width=250 valign=middle align=center>";
echo "<font face=verdana size=2 color=#FF0000><b>";
echo "Anda pengunjung yang ke: $hit";
echo "</b></font>";
echo "</td></tr></table>";
}
?>
    </center>
</body>
</html>
