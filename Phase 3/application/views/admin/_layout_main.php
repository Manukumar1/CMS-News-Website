<?php $this->load->view('admin/components/page_head'); ?>
  <body>
    <div class="navbar navbar-static-top navbar-inverse">
      <div class="container">
        <div class="navbar-header">
          <a  class="navbar-brand" href="<?php echo base_url('admin/dashboard');?>"><?php echo $meta_title; ?></a>
          <button class="navbar-toggle" data-toggle="collapse" data-target = ".navHeaderCollapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>
        <div class="collapse navbar-collapse navHeaderCollapse">    
          <ul class="nav navbar-nav navbar-left">
            <li class="active"><a href="<?php echo base_url('admin/dashboard'); ?>">Dashboard</a></li>
            <li><?php echo anchor('admin/page', 'pages');?></li>
            <li><?php echo anchor('admin/user', 'users');?></li>
          </ul>
        </div>
      </div>
    </div>  

    <div class="container">
      <div class="row">
      <!--Main column -->
        <div class="col-sm-9">
          <?php $this->load->view($subview); ?>
        </div>
      <!--Sidebar -->
        <div class="col-sm-3">
          <section>
            <?php echo mailto('mk080698@gmail.com', '<span class="glyphicon glyphicon-user" aria-hidden="true"></span> mk080698@gmail.com'); ?><br>
            <?php echo anchor('admin/user/logout', '<span class="glyphicon glyphicon-off" aria-hidden="true"></span> logout'); ?>
          </section>
        </div>
      </div>
    </div>
<?php $this->load->view('admin/components/page_tail'); ?>