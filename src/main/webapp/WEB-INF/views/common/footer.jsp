 <!-- footer content -->
         <footer>
          <div class="pull-right">
            Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>

    <!-- compose -->
    <div class="compose col-md-6 col-xs-12">
      <div class="compose-header">
        New Message
        <button type="button" class="close compose-close">
          <span>�</span>
        </button>
      </div>

      <div class="compose-body">
        <div id="alerts"></div>

        <div class="btn-toolbar editor" data-role="editor-toolbar" data-target="#editor">
          <div class="btn-group">
            <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i class="fa fa-font"></i><b class="caret"></b></a>
            <ul class="dropdown-menu">
            </ul>
          </div>

          <div class="btn-group">
            <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="fa fa-text-height"></i>&nbsp;<b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li>
                <a data-edit="fontSize 5">
                  <p style="font-size:17px">Huge</p>
                </a>
              </li>
              <li>
                <a data-edit="fontSize 3">
                  <p style="font-size:14px">Normal</p>
                </a>
              </li>
              <li>
                <a data-edit="fontSize 1">
                  <p style="font-size:11px">Small</p>
                </a>
              </li>
            </ul>
          </div>

          <div class="btn-group">
            <a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="fa fa-bold"></i></a>
            <a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="fa fa-italic"></i></a>
            <a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="fa fa-strikethrough"></i></a>
            <a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="fa fa-underline"></i></a>
          </div>

          <div class="btn-group">
            <a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="fa fa-list-ul"></i></a>
            <a class="btn" data-edit="insertorderedlist" title="Number list"><i class="fa fa-list-ol"></i></a>
            <a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="fa fa-dedent"></i></a>
            <a class="btn" data-edit="indent" title="Indent (Tab)"><i class="fa fa-indent"></i></a>
          </div>

          <div class="btn-group">
            <a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="fa fa-align-left"></i></a>
            <a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="fa fa-align-center"></i></a>
            <a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="fa fa-align-right"></i></a>
            <a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="fa fa-align-justify"></i></a>
          </div>

          <div class="btn-group">
            <a class="btn dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="fa fa-link"></i></a>
            <div class="dropdown-menu input-append">
              <input class="span2" placeholder="URL" type="text" data-edit="createLink" />
              <button class="btn" type="button">Add</button>
            </div>
            <a class="btn" data-edit="unlink" title="Remove Hyperlink"><i class="fa fa-cut"></i></a>
          </div>

          <div class="btn-group">
            <a class="btn" title="Insert picture (or just drag & drop)" id="pictureBtn"><i class="fa fa-picture-o"></i></a>
            <input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" />
          </div>

          <div class="btn-group">
            <a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="fa fa-undo"></i></a>
            <a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="fa fa-repeat"></i></a>
          </div>
        </div>

        <div id="editor" class="editor-wrapper"></div>
      </div>

      <div class="compose-footer">
        <button id="send" class="btn btn-sm btn-success" type="button">Send</button>
      </div>
    </div>
    <!-- /compose -->

   <%--  <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js" type="text/javascript"></script> --%>
    <!-- Bootstrap -->
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="${pageContext.request.contextPath}/resources/js/fastclick.js"></script>
    <!-- NProgress -->
    <script src="${pageContext.request.contextPath}/resources/js/nprogress.js"></script>
    
        <!-- Chart.js -->
    <script src="${pageContext.request.contextPath}/resources/js/Chart.min.js"></script>
    <!-- gauge.js -->
    <script src="${pageContext.request.contextPath}/resources/js/gauge.min.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="${pageContext.request.contextPath}/resources/js/icheck.min.js"></script>
    <!-- Skycons -->
    <script src="${pageContext.request.contextPath}/resources/js/skycons.js"></script>
    <!-- Flot -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery.flot.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.flot.pie.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.flot.time.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.flot.stack.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.flot.resize.js"></script>
    <!-- Flot plugins -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery.flot.orderBars.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.flot.spline.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/curvedLines.js"></script>
    <!-- DateJS -->
    <script src="${pageContext.request.contextPath}/resources/js/date.js"></script>
    <!-- JQVMap -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery.vmap.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.vmap.world.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.vmap.sampledata.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="${pageContext.request.contextPath}/resources/js/moment.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/daterangepicker.js"></script>
    
     <!-- Datatables -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/dataTables.bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/dataTables.buttons.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/buttons.bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/buttons.flash.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/buttons.html5.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/buttons.print.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/dataTables.fixedHeader.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/dataTables.keyTable.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/dataTables.responsive.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/responsive.bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/dataTables.scroller.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jszip.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/pdfmake.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/vfs_fonts.js"></script>
    
    <script src="${pageContext.request.contextPath}/resources/js/jquery.smartWizard.js"></script>
    
    
   <%--  <script src="${pageContext.request.contextPath}/resources/js/pdfObject.js"></script> --%>
    
    <!-- bootstrap-wysiwyg -->
 <%--    <script src="${pageContext.request.contextPath}/resources/js/bootstrap-wysiwyg.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.hotkeys.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.prettify.js"></script>
 --%>
    <!-- Custom Theme Scripts -->
    <script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>

  </body>
</html>