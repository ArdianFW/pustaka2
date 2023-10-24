<?php echo view('layout/header'); ?>

<div id="layoutSidenav_content">
    <main>
        <div class="container-fluid px-6">
            <h1 class="mt-4">Daftar Buku</h1>
            <div class="card mb-4">
                <div class="card-body">
                    <table id="datatablesSimple" class="table table-bordered table-responsive">
                        <thead>
                            <tr>
                                <th>ISBN</th>
                                <th>Judul</th>
                                <th>Kategori</th>
                                <th>Pengarang</th>
                                <th>Penerbit</th>
                                <th>Tahun</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($buku as $book) : ?>
                            <tr>
                                <td><?= $book['isbn'] ?></td>
                                <td><?= $book['judul'] ?></td>
                                <td><?= $book['kategori'] ?></td>
                                <td><?= $book['pengarang'] ?></td>
                                <td><?= $book['penerbit'] ?></td>
                                <td><?= $book['tgl_insert'] ?></td>
                                <td>
                                    <a href="<?= base_url('/detail_buku/' . $book['isbn']) ?>"
                                        class="btn btn-primary">Detail</a>
                                </td>

                            </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </main>
</div>
<div>

</div>

<?php echo view('layout/footer'); ?>