<?php include 'header.php'; ?>

<div class="breadcome-area">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="breadcome-list">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="breadcome-heading">
                                <h4 style="margin-bottom: 0px">Data Arsip</h4>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <ul class="breadcome-menu" style="padding-top: 0px">
                                <li><a href="#">Home</a> <span class="bread-slash">/</span></li>
                                <li><span class="bread-blod">Arsip</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container-fluid">
    <!-- panel pdf -->
    <div class="panel panel">
    <div class="panel-heading">
        <h3 class="panel-title">CETAK LAPORAN BERDASARKAN TANGGAL<BR></BR>
        </h3>
            <form method="GET" action="../assets/pdf/laporan.php" target="_blank">
        <label class="col-sm-2 control-label">DARI *</label>
        <div class="control-group">
            <input type="date" name="dari_tgl" id="stayf" value="<?php echo date('Y-m-d');?>" class="form-control" style="width:400px;margin: 10px;">
        </div>
        <label class="col-sm-2 control-label">SAMPAI *</label>
        <div class="control-group">
            <input type="date" name="sampai_tgl" id="stayf" value="<?php echo date('Y-m-d');?>" class="form-control" style="width:400px;margin: 10px;">
        </div>

        <button class="btn btn-primary" type="submit"><i class="fa fa-download"></i> Export PDF
        </button>
        <a class="btn btn-primary" href="../assets/pdf/laporan_all.php" target="_blank" role="button"><i class="fa fa-download"></i> Export Semua Data</a>
        </form>
        </div>
    <!-- panel pdf -->    
        <!-- export pdf -->
        <!-- <a style ="float:right" target="_blank" class="btn btn-default" href="../assets/pdf/laporan.php"> Export Pdf</a> -->
        <!-- <input style ="float:right;" type="button" value="Export PDF" onclick="window.open('../assets/pdf/laporan.php','blank')"></p> -->
        <!-- <button style ="float:right;" value="Export PDF" type="button"><i class="fas fa-download" onclick="window.open('../assets/pdf/laporan.php','blank')"></i></button> -->
        <!-- export pdf -->
        
        
        <div class="panel-body">

            <table id="table" class="table table-bordered table-striped table-hover table-datatable">
                <thead>
                    <tr>
                        <th width="1%">No</th>
                        <th>Tanggal Upload</th>
                        <th>Arsip</th>
                        <th>Kategori</th>
                        <th>Petugas</th>
                        <th>Keterangan</th>
                        <th class="text-center" width="20%">OPSI</th>
                    </tr>
                </thead>
                <tbody>
                    <?php 
                    include '../koneksi.php';
                    $no = 1;
                    $arsip = mysqli_query($koneksi,"SELECT * FROM arsip,kategori,petugas WHERE arsip_petugas=petugas_id and arsip_kategori=kategori_id ORDER BY arsip_id DESC");
                    while($p = mysqli_fetch_array($arsip)){
                        ?>
                        <tr>
                            <td><?php echo $no++; ?></td>
                            <td><?php echo date('d-m-Y',strtotime($p['arsip_waktu_upload'])) ?></td>
                            <td>

                                <b>KODE</b> : <?php echo $p['arsip_kode'] ?><br>
                                <b>Nama</b> : <?php echo $p['arsip_nama'] ?><br>
                                <b>Jenis</b> : <?php echo $p['arsip_jenis'] ?><br>

                            </td>
                            <td><?php echo $p['kategori_nama'] ?></td>
                            <td><?php echo $p['petugas_nama'] ?></td>
                            <td><?php echo $p['arsip_keterangan'] ?></td>
                            <td class="text-center">



                                <div class="modal fade" id="exampleModal_<?php echo $p['arsip_id']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">PERINGATAN!</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                Apakah anda yakin ingin menghapus data ini? <br>file dan semua yang berhubungan akan dihapus secara permanen.
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Batalkan</button>
                                                <a href="arsip_hapus.php?id=<?php echo $p['arsip_id']; ?>" class="btn btn-primary"><i class="fa fa-check"></i> &nbsp; Ya, hapus</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="btn-group">
                                    <a target="_blank" class="btn btn-default" href="../arsip/<?php echo $p['arsip_file']; ?>"><i class="fa fa-download"></i></a>
                                    <a target="_blank" href="arsip_preview.php?id=<?php echo $p['arsip_id']; ?>" class="btn btn-default"><i class="fa fa-search"></i> Preview</a>
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal_<?php echo $p['arsip_id']; ?>">
                                        <i class="fa fa-trash"></i>
                                    </button>
                                </div>
                            </td>
                        </tr>
                        <?php 
                    }
                    ?>
                </tbody>
            </table>


        </div>

    </div>
</div>


<?php include 'footer.php'; ?>