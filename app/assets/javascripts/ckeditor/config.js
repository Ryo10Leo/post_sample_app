CKEDITOR.editorConfig = function(config) {
    config.language = 'ja';
    config.filebrowserBrowseUrl = "/ckeditor/attachment_files";
    config.filebrowserImageBrowseLinkUrl = "/ckeditor/pictures";
    config.filebrowserImageBrowseUrl = "/ckeditor/pictures";
    config.filebrowserImageUploadUrl = "/ckeditor/pictures";
    config.filebrowserUploadUrl = "/ckeditor/attachment_files";
    config.allowedContent = true;


config.toolbar = [
    ['Source','Preview']
    ,['Cut','Copy','Paste','PasteText','Undo','Redo']
    ,['Styles','Format','Font','FontSize']
    ,['TextColor','BGColor','RemoveFormat','Maximize']
    ,'/'
    ,['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock']
    ,['NumberedList','BulletedList','Blockquote']
    ,['Link','Unlink','Anchor','Image','HorizontalRule','Smiley']
  ];

  config.removeButtons='Source,Font,FontSize,HorizontalRule,Anchor,Blockquote,Styles,Format,RemoveFormat'

  config.image_prefillDimensions = false;
};

CKEDITOR.on('dialogDefinition', function (ev) {
  var dialogName = ev.data.name;
  var dialogDefinition = ev.data.definition;

  if (dialogName === 'image') {

      var infoTab = dialogDefinition.getContents('info');
      if (infoTab) {
          infoTab.remove('txtAlt');
          infoTab.get('txtUrl')['hidden'] = true;
          infoTab.remove('txtHSpace');
          infoTab.remove('txtVSpace');
          infoTab.remove('txtBorder');
          infoTab.remove('cmbAlign');

          var browse = infoTab.get('browse');
          if (browse) browse.label = '画像アップロードor画像を選択';
      }

      // remove unnecessary tabs
      if (dialogDefinition.getContents('Link')) dialogDefinition.removeContents('Link');
      if (dialogDefinition.getContents('advanced')) dialogDefinition.removeContents('advanced');
      if (dialogDefinition.getContents('Upload')) dialogDefinition.removeContents('Upload');
  }
});

CKEDITOR.addCss('.cke_editable img { width: 90px !important; height: auto !important; }');
