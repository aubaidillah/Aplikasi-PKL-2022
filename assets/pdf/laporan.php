<?php  
require('fpdf.php');

$pdf = new FPDF();
$pdf->AddPage();

$dari_tgl   =$_GET['dari_tgl'];
$sampai_tgl =$_GET['sampai_tgl'];

//koneksi ke database
$koneksi = mysqli_connect("localhost","root","","arsip");
//query untuk mengambil data
$no = 1;
$query = "SELECT * FROM arsip,kategori WHERE arsip_kategori=kategori_id AND arsip.arsip_waktu_upload BETWEEN '$dari_tgl' AND '$sampai_tgl' ORDER BY arsip_id";

$hasil = mysqli_query($koneksi, $query);

//header tabel
$pdf->SetFont('Arial','B',18);
$pdf->Cell(0,5,'SISTEM INFORMASI ARSIP DIGITAL (SIAD) JQK','0','1','C',false);
$pdf->SetFont('Arial','i',16);
$pdf->Cell(0,5,'Jamiyyatul Qurro Wal Khuttotin','0','1','C',false);
$pdf->Ln(1);
$pdf->SetFont('Arial','i',8);
$pdf->Cell(0,2,'Code by: aubaidillah756@gmail.com | website: www.arsip-jqk.my.id','0','1','C',false);
$pdf->Ln(3);
$pdf->Cell(190,0.6,'','0','1','C',true);
$pdf->Ln(7);

$pdf->SetFont('Arial','B',9);
$pdf->Cell(0,2,'Laporan Data Arsip','0','1','L',false);
$pdf->Ln(3);

//tampilkan tabel
$pdf->Cell(10,10,'NO',1,0,'C');
$pdf->Cell(15,10,'KODE',1,0,'C');
$pdf->Cell(55,10,'NAMA',1,0,'C');
$pdf->Cell(15,10,'JENIS',1,0,'C');
$pdf->Cell(45,10,'KATEGORI',1,0,'C');
$pdf->Cell(40,10,'WAKTU UPLOAD',1,0,'C');


$pdf->Ln();

//tampilkan data
while($data = mysqli_fetch_array($hasil)){ 
    $pdf->SetFont('Arial','',9);
    $pdf->Cell(10,10,$no++,1,0,'C');
    $pdf->Cell(15,10,$data['arsip_kode'],1,0,'C');
    $pdf->Cell(55,10,$data['arsip_nama'],1,0,'L');
    $pdf->Cell(15,10,$data['arsip_jenis'],1,0,'C');
    $pdf->Cell(45,10,$data['kategori_nama'],1,0,'C');
    $pdf->Cell(40,10,$data['arsip_waktu_upload'],1,0,'C');
    
    
    $pdf->Ln();
}

$pdf->Output();
?>