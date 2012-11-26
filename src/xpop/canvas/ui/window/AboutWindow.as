package xpop.canvas.ui.window
{
	import alternativa.gui.container.linear.VBox;
	import alternativa.gui.primitives.Logo;
	import alternativa.gui.theme.defaulttheme.container.panel.Panel;
	import alternativa.gui.theme.defaulttheme.controls.text.Label;
	import alternativa.gui.theme.defaulttheme.event.PanelEvent;
	
	import xpop.canvas.Config;
	
	public class AboutWindow extends Panel
	{
		private var _config:Config;
		private var comment:Label;
		private var guiLogo:Logo;
		public function AboutWindow()
		{
		}
		public function init( config:Config ):void
		{
			_config = config;
			title = "About XPopCanvas";
			width = 270;
			dragEnabled = true;
			closeButtonShow = true;
			mouseEnabled = true;
			addEventListener( PanelEvent.CLOSE, CLOSE );
			var box:VBox = new VBox( 5 );
			comment = new Label;
			comment.width = 380;
			comment.height = 200;
			comment.text = "XPopCanvas\n" +
				"Prototype\n\n" +
				"ⓒ 2012 Crosspop All Rights Reserved";
			box.addChild( comment );
			guiLogo = new Logo;
			box.addChild( guiLogo );
			content = box;
		}
		private function CLOSE( e:PanelEvent ):void
		{
			parent.removeChild( this );
		}
	}
}