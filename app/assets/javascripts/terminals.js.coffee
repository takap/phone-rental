# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  # initialize dataTable
  $('#terminals').dataTable
    "oLanguage":
      "sProcessing": "読み込み中..."
      "sInfo": "_TOTAL_ 件中 _START_ 件から _END_ 件を表示中"
      "sInfoEmpty": "_TOTAL_ 件"
      "sInfoFiltered": " (全 _MAX_ 件からフィルタ)"
      "sInfoPostFix": ""
      "sLengthMenu": "_MENU_ 件ずつ表示"
      "sZeroRecords"   : "該当するユーザが見つかりませんでした"
      "sSearch": ""
      "sUrl": ""
      "bProcessing" : true
      "oPaginate":
        "sNext": "次のページ"
        "sPrevious": "前のページ"
    "iDisplayLength": "-1"
    "sPaginationType": "bootstrap"

  $('#terminals_filter > label > input').addClass('form-control input-sm').attr('placeholder', 'なまえの一部を入力').focus()
