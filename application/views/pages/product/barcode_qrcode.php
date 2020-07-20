<main role="main" class="container">    
    <?php $this->load->view('layouts/_alert') ?>
    <div class="row">
        <div class="col-md-10 mx-auto">
            <div class="card">
                <div class="card-header">
                    <span>Produk</span>
                    <a href="<?= base_url('product') ?>" class="btn btn-sm btn-secondary">Kembali</a>
                
                    <div class="float-right">
                        <form action="<?= base_url('product/search') ?>" method="POST">
                            <div class="input-group">
                                <input type="text" name="keyword" class="form-control form-control-sm text-center" placeholder="Cari" value="<?= $this->session->userdata('keyword') ?>">
                                <div class="input-group-append">
                                    <button class="btn btn-secondary btn-sm" type="submit">
                                        <i class="fas fa-search"></i>
                                    </button>
                                    <a href="<?= base_url('product/reset') ?>" class="btn btn-secondary btn-sm"><i class="fas fa-eraser"></i></a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="card-body">
                    <table class="table">
                        <thead>
                        </thead>
                        <tbody>
                        <?php $no = 0; foreach($content as $row) : $no++ ?>
                            <tr>
                            <?php
                            $generator = new Picqer\Barcode\BarcodeGeneratorPNG();
                            echo '<img src="data:image/png;base64,' . base64_encode($generator->getBarcode($row->barcode, $generator::TYPE_CODE_128)) . '">';
                            ?><br>
                            <?= $row->barcode ?>
                            </tr>
                            <br>
                            <?php endforeach ?>
                            
                        </tbody>
                    </table>
        </div>
    </div>
</main>