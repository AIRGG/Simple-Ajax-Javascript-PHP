<?php
if (!isset($_GET['op'])) {
	header("location:ajax2.html");
}else{
header("Content-Type: text/xml");
echo "<hasil>";
$con = mysqli_connect("localhost", "root", "", "db_testing");
$op = $_GET['op'];
//Tampil Data
if ($op == "tampil") {
	$sql = "SELECT * FROM mhs";
	$query = mysqli_query($con, $sql);
}
//Simpan Data
elseif ($op == "simpan") {
	$nim = $_GET['nim'];
	$nama = $_GET['nama'];
	$alamat = $_GET['alamat'];

	$sql = "INSERT INTO mhs VALUES('$nim','$nama','$alamat')";
	$hasil = mysqli_query($con, $sql);

	$tampil = "SELECT * FROM mhs";
	$query = mysqli_query($con, $tampil);
}
//Hapus Data
elseif ($op == "hapus") {
	$nim = $_GET['nim'];

	$sql = "DELETE FROM mhs WHERE nim = $nim";
	$hasil = mysqli_query($con, $sql);

	$tampil = "SELECT * FROM mhs";
	$query = mysqli_query($con, $tampil);
}
//Tampil Edit
elseif ($op == "tampiledit") {
	$nim = $_GET['nim'];

	$sql = "SELECT * FROM mhs WHERE nim='$nim'";
	$query = mysqli_query($con, $sql);
}
//Edit Data
elseif ($op == "edit") {
	$nim = $_GET['nim'];
	$nama = $_GET['nama'];
	$alamat = $_GET['alamat'];

	$sql = "UPDATE mhs SET nama='$nama', alamat='$alamat' WHERE nim='$nim'";
	$hasil = mysqli_query($con, $sql);

	$tampil = "SELECT * FROM mhs";
	$query = mysqli_query($con, $tampil);
}
//Cari Data
elseif ($op == "cari") {
	$kata = $_GET['kunci'];

	$sql = "SELECT * FROM mhs WHERE nama LIKE '%$kata%' OR alamat LIKE '%$kata%' OR nim LIKE '%$kata%'";
	$query = mysqli_query($con, $sql);
}
while ($data = mysqli_fetch_array($query)) {
	echo "<mhs>";
	echo "<nim>".$data['nim']."</nim>";
	echo "<nama>".$data['nama']."</nama>";
	echo "<alamat>".$data['alamat']."</alamat>";
	echo "</mhs>";
}
echo "</hasil>";

}
?>