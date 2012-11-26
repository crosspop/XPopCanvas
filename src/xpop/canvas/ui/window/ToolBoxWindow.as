package xpop.canvas.ui.window
{
	import alternativa.gui.container.linear.VBox;
	import alternativa.gui.controls.button.RadioButtonGroup;
	import alternativa.gui.theme.defaulttheme.container.panel.Panel;
	import alternativa.gui.theme.defaulttheme.event.PanelEvent;
	
	import flash.events.MouseEvent;
	
	import xpop.canvas.Config;
	import xpop.canvas.ui.window.toolbox.BrushToolButton;
	import xpop.canvas.ui.window.toolbox.EraserToolButton;
	import xpop.canvas.ui.window.toolbox.HandToolButton;
	
	public class ToolBoxWindow extends Panel
	{
		private var _config:Config;
		public var buttonGroup:RadioButtonGroup;
		public var brushToolButton:BrushToolButton;
		public var eraserToolButton:EraserToolButton;
		public var handToolButton:HandToolButton;
		public function ToolBoxWindow()
		{
		}
		public function init( config:Config ):void
		{
			_config = config;
			title = "ToolBox";
			width = 100;
			y = 50;
			dragEnabled = true;
			closeButtonShow = true;
			mouseEnabled = true;
			addEventListener( PanelEvent.CLOSE, CLOSE );
			var box:VBox = new VBox( 5 );
			buttonGroup = new RadioButtonGroup;
			brushToolButton = new BrushToolButton;
			brushToolButton.init( _config );
			buttonGroup.addButton( brushToolButton );
			box.addChild( brushToolButton );
			eraserToolButton = new EraserToolButton;
			eraserToolButton.init( _config );
			buttonGroup.addButton( eraserToolButton );
			box.addChild( eraserToolButton );
			handToolButton = new HandToolButton;
			handToolButton.init( _config );
			buttonGroup.addButton( handToolButton );
			box.addChild( handToolButton );
			brushToolButton.selected = true;
			content = box;
		}
		private function CLOSE( e:PanelEvent ):void
		{
			parent.removeChild( this );
		}
	}
}