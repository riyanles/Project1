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

                       <section>
                        <div class="container-alt">
                            <div class="row">
                                <div class="col-sm-12 text-center">
                                    <div class="home-wrapper">
                                        <h1 class="icon-main text-custom"><i class="md md-album"></i></h1>
                                        <h1 class="home-text text-uppercase"><span class="text-primary">Site For</span> <span class="text-pink">Demo</span> <span class="text-info">Only</span></h1>
                                        <h4 class="text-muted">We're making the system based on <b>User Requirement.</b></h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                      </section>
                                    


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