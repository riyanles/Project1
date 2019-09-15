<!DOCTYPE html>
<html>
    <head> 
        <?php $this->load->view('_partial/header.php'); ?>
    </head>


    <body class="fixed-left">
        <!-- Begin page -->
        <div id="wrapper">

            <!-- Top Bar Start -->
                <?php $this->load->view('_partial/topbar.php'); ?>
            <!-- Top Bar End -->
            <!-- ========== Left Sidebar Start ========== -->

            <?php $this->load->view('_partial/menu.php'); ?>
            <!-- Left Sidebar End -->
            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="content-page">
                <!-- Start content -->
                <div class="content">
                    <div class="container">

                        <!-- Page-Title -->
                        <!-- Basic Form Wizard -->
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card-box">
                                    <h4 class="m-t-0 header-title"><b><u>Input Data Karyawan</u></b></h4>

                                    
                                    <form id="basic-form" action="#">
                                        <div>
                                            <h3>Account</h3>
                                            <section>
                                                <div class="form-group clearfix">
                                                    <label class="col-lg-2 control-label " for="userName">User name *</label>
                                                    <div class="col-lg-10">
                                                        <input class="form-control required" id="userName" name="userName" type="text">
                                                    </div>
                                                </div>
                                                <div class="form-group clearfix">
                                                    <label class="col-lg-2 control-label " for="password"> Password *</label>
                                                    <div class="col-lg-10">
                                                        <input id="password" name="password" type="text" class="required form-control">

                                                    </div>
                                                </div>

                                                <div class="form-group clearfix">
                                                    <label class="col-lg-2 control-label " for="confirm">Confirm Password *</label>
                                                    <div class="col-lg-10">
                                                        <input id="confirm" name="confirm" type="text" class="required form-control">
                                                    </div>
                                                </div>
                                                
                                            </section>
                                            <h3>Profile</h3>
                                            <section>
                                                <div class="form-group clearfix">

                                                    <label class="col-lg-2 control-label" for="name"> Nama Karyawan *</label>
                                                    <div class="col-lg-10">
                                                        <input id="name" name="name" type="text" class="required form-control">
                                                    </div>
                                                </div>
                                                <div class="form-group clearfix">
                                                    <label class="col-lg-2 control-label " for="surname"> Alamat *</label>
                                                    <div class="col-lg-10">
                                                        <input id="surname" name="surname" type="text" class="required form-control">

                                                    </div>
                                                </div>

                                                <div class="form-group clearfix">
                                                    <label class="col-lg-2 control-label " for="email">Email *</label>
                                                    <div class="col-lg-10">
                                                        <input id="email" name="email" type="text" class="required email form-control">
                                                    </div>
                                                </div>

                                                <div class="form-group clearfix">
                                                    <label class="col-lg-2 control-label " for="address">Agama *</label>
                                                    <div class="col-lg-10">
                                                        <select class="selectpicker" data-style="btn-primary btn-custom">
                                                            <option disabled selected> - Pilih Agama -</option>
                                                            <option>Kristen</option>
                                                            <option>Katholik</option>
                                                            <option>Islam</option>
                                                            <option>Budha</option>
                                                            <option>Hindu</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group clearfix">
                                                    <label class="col-lg-2 control-label " for="address">Pendidikan *</label>
                                                    <div class="col-lg-10">
                                                        <select class="selectpicker" data-style="btn-primary btn-custom">
                                                            <option disabled selected> - Pilih Jenjang Pendidikan -</option>
                                                            <option>S1</option>
                                                            <option>D3</option>
                                                            <option>SMK/SMA/Sederajat</option>
                                                            <option>SMP</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group clearfix">
                                                    <label class="col-lg-2 control-label " for="address">No. KTP*</label>
                                                    <div class="col-lg-10">
                                                        <input id="address" name="address" type="text" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="form-group clearfix">
                                                    <label class="col-lg-2 control-label " for="address">Tanggal Lahir*</label>
                                                    <div class="col-lg-10">
                                                        <input id="address" name="address" type="text" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="form-group clearfix">
                                                    <label class="col-lg-2 control-label " for="address">Status Karyawan*</label>
                                                    <div class="col-lg-10">
                                                        <select class="selectpicker" data-style="btn-primary btn-custom">
                                                            <option disabled selected> - Pilih Status Karyawan -</option>
                                                            <option>Tetap</option>
                                                            <option>Kontrak</option>               
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group clearfix">
                                                    <label class="col-lg-2 control-label " for="address">Tanggal Masuk*</label>
                                                    <div class="col-lg-10">
                                                        <input id="address" name="address" type="text" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="form-group clearfix">
                                                    <label class="col-lg-2 control-label " for="address">Tanggal Resign</label>
                                                    <div class="col-lg-10">
                                                        <input id="address" name="address" type="text" class="form-control">
                                                        <span class="label label-danger" id="spantypeform">
                                                            Di isi jika karyawan resign
                                                        </span>                               
                                                    </div>
                                                </div>

                                                <div class="form-group clearfix">
                                                    <label class="col-lg-12 control-label">(*) Mandatory</label>
                                                </div>

                                            </section>
                                            <h3>Upload</h3>
                                            <section>
                                                <div class="form-group clearfix">
                                                    <label class="col-lg-2 control-label " for="address">Foto</label>
                                                    <div class="col-lg-10">
                                                        <input type="file" class="filestyle" data-input="false">
                                                    </div>
                                                </div>
                                                <div class="form-group clearfix">
                                                    <label class="col-lg-2 control-label " for="address">KTP</label>
                                                    <div class="col-lg-10">
                                                        <input type="file" class="filestyle" data-input="false">
                                                    </div>
                                                </div>
                                                <div class="form-group clearfix">
                                                    <label class="col-lg-2 control-label " for="address">KK</label>
                                                    <div class="col-lg-10">
                                                        <input type="file" class="filestyle" data-input="false">
                                                    </div>
                                                </div>
                                                <div class="form-group clearfix">
                                                    <label class="col-lg-2 control-label " for="address">NPWP</label>
                                                    <div class="col-lg-10">
                                                        <input type="file" class="filestyle" data-input="false">
                                                    </div>
                                                </div>
                                                <div class="form-group clearfix">
                                                    <label class="col-lg-2 control-label " for="address">BPJS Ketenagakerjaan</label>
                                                    <div class="col-lg-10">
                                                        <input type="file" class="filestyle" data-input="false">
                                                    </div>
                                                </div>
                                                <div class="form-group clearfix">
                                                    <label class="col-lg-2 control-label " for="address">BPJS Kesehatan</label>
                                                    <div class="col-lg-10">
                                                        <input type="file" class="filestyle" data-input="false">
                                                    </div>
                                                </div>
                                            </section>
                                            <h3>Finish</h3>
                                            <section>
                                                <div class="form-group clearfix">
                                                    <div class="col-lg-12">
                                                        <div class="checkbox checkbox-primary">
                                                            <span class="label label-info" id="spantypeform">
                                                            Harap Periksa Kembali Data Karyawan Tersebut, Klik Finish Jika Sudah OK!
                                                        </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </section>
                                        </div>
                                    </form> 
                                    
                                </div>
                            </div>
                        </div>

                        <!-- End row -->
                        <!-- end row -->


                    </div> <!-- container -->

                </div> <!-- content -->

                

            </div>


            <!-- ============================================================== -->
            <!-- End Right content here -->
            <!-- ============================================================== -->


            <!-- Right Sidebar -->
            
            <!-- /Right-bar -->

        </div>

        
        
        <!-- END wrapper -->
        <?php $this->load->view('_partial/footer.php'); ?>
    </body>
</html>