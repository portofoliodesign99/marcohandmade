<main role="main" class="container">
    <?php $this->load->view('layouts/_alert') ?>
    <div class="row">
        <div class="col-md-9">
            <div class="row">
                <div class="col-md-12">
                    <div class="card-mb3">
                        <div class="card-body">
                            <title>Lokasi Toko Marco</title>
                            <?php echo $map['js'];?>
                            <?php echo $map['html'];?>
                            <span class="float-right">
                                <a href="<?= base_url("/") ?>" class="badge badge-primary">Kembali</a> 
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>