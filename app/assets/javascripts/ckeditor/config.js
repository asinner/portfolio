CKEDITOR.editorConfig = function( config ) {
	
	config.extraPlugins = 'pbckcode'; // add other plugins here (comma separated)
	
	//config.toolbar = 'Full';
	//
	//config.toolbar_Full =
	//[
	//	{ name: 'pbckcode', items: ['pbckcode'] },
	//	{ name: 'document', items : [ 'Source','-','Save','NewPage','DocProps','Preview','Print','-','Templates' ] },
	//	{ name: 'clipboard', items : [ 'Cut','Copy','Paste','PasteText','PasteFromWord','-','Undo','Redo' ] },
	//	{ name: 'editing', items : [ 'Find','Replace','-','SelectAll','-','SpellChecker', 'Scayt' ] },
	//	{ name: 'forms', items : [ 'Form', 'Checkbox', 'Radio', 'TextField', 'Textarea', 'Select', 'Button', 'ImageButton', 
	//        'HiddenField' ] },
	//	'/',
	//	{ name: 'basicstyles', items : [ 'Bold','Italic','Underline','Strike','Subscript','Superscript','-','RemoveFormat' ] },
	//	{ name: 'paragraph', items : [ 'NumberedList','BulletedList','-','Outdent','Indent','-','Blockquote','CreateDiv',
	//	'-','JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock','-','BidiLtr','BidiRtl' ] },
	//	{ name: 'links', items : [ 'Link','Unlink','Anchor' ] },
	//	{ name: 'insert', items : [ 'Image','Flash','Table','HorizontalRule','Smiley','SpecialChar','PageBreak','Iframe' ] },
	//	'/',
	//	{ name: 'styles', items : [ 'Styles','Format','Font','FontSize' ] },
	//	{ name: 'colors', items : [ 'TextColor','BGColor' ] },
	//	{ name: 'tools', items : [ 'Maximize', 'ShowBlocks','-','About' ] }
	//];

	config.toolbarGroups = [
			{ name: 'pbckcode' },
	    { name: 'mode',    groups: [ 'mode'	 ] },
	    { name: 'spellchecker', groups: [ 'spellchecker' ] },
	    { name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },
	    { name: 'links' },
    	'/',
	    { name: 'paragraph',   groups: [ 'list', 'indent', 'blocks', 'align', 'bidi' ] },
	    { name: 'insert' },
	    '/',
	    { name: 'styles' },
	    { name: 'colors' },
	    { name: 'tools' },
	    { name: 'others' },
	    { name: 'about' }
	];
	
	config.height = '300px';
	
  // PBCKCODE CUSTOMIZATION
  config.pbckcode = {
	
      // An optional class to your pre tag.
      cls : '',
  
      // The syntax highlighter you will use in the output view
      highlighter : 'PRETTIFY',
  
      // An array of the available modes for you plugin.
      // The key corresponds to the string shown in the select tag.
      // The value correspond to the loaded file for ACE Editor.
      modes :  [ ['HTML', 'html'], ['CSS', 'css'], ['PHP', 'php'], ['JS', 'javascript'], ['Ruby', 'ruby'], ['SCSS', 'scss'], ['YAML', 'yaml'], ['JSON', 'json'], ['Shell', 'sh'] ],
  
      // The theme of the ACE Editor of the plugin.
      theme : 'text',
  
      // Tab indentation (in spaces)
      tab_size : '2',

  };

	config.allowedContent = {
		script: true
	}

};