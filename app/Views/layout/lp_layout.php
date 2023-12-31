<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">
    <meta name="author" content="">

    <title>ebook landing page template</title>

    <!-- CSS FILES -->
    <link rel="preconnect" href="https://fonts.googleapis.com">

    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=Unbounded:wght@300;400;600;700&display=swap" rel="stylesheet">

    <link href="/user/css/bootstrap.min.css" rel="stylesheet">

    <link href="/user/css/bootstrap-icons.css" rel="stylesheet">

    <link href="/user/css/templatemo-ebook-landing.css" rel="stylesheet">
    <!--

TemplateMo 588 ebook landing

https://templatemo.com/tm-588-ebook-landing

-->
</head>

<body>
    <!-- Header -->
    <?php echo view('layout/lp_header'); ?>

    <!-- Konten dari view 'index' akan dimasukkan di sini -->
    <?= $this->renderSection('content') ?>

    <!-- Footer -->
    <?php echo view('layout/lp_footer'); ?>
</body>