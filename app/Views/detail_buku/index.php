<?php echo view('layout/header'); ?>

<div id="layoutSidenav_content">
    <main>
        <div class="container-fluid px-4">
            <h1 class="mt-4">Detail Buku</h1>
            <div class="card mb-4">
                <table class="table">
                    <tr>
                        <th width="150px">Judul Buku</th>
                        <th width="20px">:</th>
                        <td>
                            <h5><?= $buku['judul'] ?></h5>
                        </td>
                    </tr>
                    <tr>
                        <th>Kategori</th>
                        <th>:</th>
                        <td>
                            <?= $buku['kategori'] ?>
                        </td>
                    </tr>
                    <tr>
                        <th>ISBN</th>
                        <th>:</th>
                        <td>
                            <?= $buku['isbn'] ?>
                        </td>
                    </tr>
                    <tr>
                        <th>Pengarang</th>
                        <th>:</th>
                        <td>
                            <?= $buku['pengarang'] ?>
                        </td>
                    </tr>
                    <tr>
                        <th>Penerbit</th>
                        <th>:</th>
                        <td>
                            <?= $buku['penerbit'] ?>
                        </td>
                    </tr>
                    <tr>
                        <th>Tahun terbit</th>
                        <th>:</th>
                        <td>
                            <?= $buku['tahun'] ?>
                        </td>
                    </tr>
                    <tr>
                        <th>Jumlah Stok</th>
                        <th>:</th>
                        <td>
                            <?= $buku['stok'] ?>
                        </td>
                    </tr>
                </table>
            </div>
            <!-- Button -->
            <div class="mb-4">
                <a class="btn btn-primary mr-4" href="#" role="button">Ajukan Peminjaman</a>
            </div>
            <!-- Menampilkan Rating dan Komentar -->
            <div class="card mb-4">
                <div class="card-header d-flex justify-content-between">
                    <h5>Rating dan Komentar</h5>
                    <?php if (!empty($avgRating['RataRating'])) : ?>
                    <div style="display: flex; align-items: center;">
                        <div id="rateYo"></div>
                        <div id="ratingNumber" style="margin-left: 10px;">
                            <?= floatval($avgRating['RataRating']) == intval($avgRating['RataRating']) ? number_format($avgRating['RataRating']) : number_format($avgRating['RataRating'], 1) ?>/5
                        </div>
                    </div>
                    <script>
                    $(function() {
                        $("#rateYo").rateYo({
                            rating: <?= $avgRating['RataRating'] ?>,
                            readOnly: true,
                            starWidth: "20px"
                        });
                    });
                    </script>
                    <?php endif; ?>
                </div>
                <div class="card-body">
                    <?php if (!empty($ratingkomen)) : ?>
                    <?php foreach ($ratingkomen as $rc) : ?>
                    <div class="mb-3">
                        <div class="mb-3">
                            <h6><strong><?= $rc['Nama_Anggota'] ?></strong></h6>
                        </div>
                        <?php if (!empty($rc['Rating'])) : ?>
                        <div style="display: flex; align-items: center;">
                            <div id="rateYo<?= $rc['ID_Anggota'] ?>"></div>
                            <div id="ratingNumber" style="margin-left: 10px;"><?= $rc['Rating'] ?>/5</div>
                        </div>
                        <script>
                        $(function() {
                            $("#rateYo<?= $rc['ID_Anggota'] ?>").rateYo({
                                rating: <?= $rc['Rating'] ?>,
                                readOnly: true,
                                starWidth: "20px"
                            });
                        });
                        </script>
                        <?php endif; ?>
                        </p>
                        <?php if (!empty($rc['Komentar'])) : ?>
                        <p><strong>Komentar:</strong> <?= $rc['Komentar'] ?></p>
                        <?php endif; ?>
                        <hr>
                    </div>
                    <?php endforeach; ?>
                    <?php else : ?>
                    <p>Belum ada rating dan komentar untuk buku ini.</p>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </main>
</div>

<?php echo view('layout/footer'); ?>