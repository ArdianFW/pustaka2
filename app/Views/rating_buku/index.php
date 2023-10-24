<?php echo view('layout/header'); ?>

<div id="layoutSidenav_content">
    <main>
        <div class="container-fluid px-4">
            <h1 class="mt-4">Daftar Rating Buku</h1>
            <div class="card mb-4">
                <div class="card-body">
                    <table id="datatablesSimple" class="table table-bordered table-responsive">
                        <thead>
                            <tr>
                                <th>ID Buku</th>
                                <th>No KTP</th>
                                <th>Skor Rating</th>
                                <th>Tanggal Rating</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($ratings as $rating) : ?>
                            <tr>
                                <td><?= $rating['idbuku'] ?></td>
                                <td><?= $rating['noktp'] ?></td>
                                <td><?= $rating['skor_rating'] ?></td>
                                <td><?= $rating['tgl_rating'] ?></td>
                            </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </main>
</div>

<?php echo view('layout/footer'); ?>