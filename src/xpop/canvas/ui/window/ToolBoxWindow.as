package xpop.canvas.ui.window
{
	import alternativa.gui.container.linear.VBox;
	import alternativa.gui.controls.button.RadioButtonGroup;
	import alternativa.gui.theme.defaulttheme.container.panel.Panel;
	import alternativa.gui.theme.defaulttheme.event.PanelEvent;
	
	import flash.events.MouseEvent;
	
	import xpop.canvas.Config;
	import xpop.canvas.ui.window.toolbox.BrushToolButton;
	
	public class ToolBoxWindow extends Panel
	{
		private var _config:Config;
		public var buttonGroup:RadioButtonGroup;
		public var brushToolButton:BrushToolButton;
		public function ToolBoxWindow()
		{
		}
		public function init( config:Config ):void
		{
			_config = config;
			title = "ToolBox";
			width = 100;
			y = 50;
			closeButtonShow = true;
			addEventListener( PanelEvent.CLOSE, CLOSE );
			dragArea.addEventListener( MouseEvent.MOUSE_DOWN, dragArea_MOUSE_DOWN );
			var box:VBox = new VBox( 0 );
			buttonGroup = new RadioButtonGroup;
			brushToolButton = new BrushToolButton;
			brushToolButton.init( config );
			buttonGroup.addButton( brushToolButton );
			box.addChild( brushToolButton );
			brushToolButton.selected = true;
			content = box;
		}
		private function dragArea_MOUSE_DOWN( e:MouseEvent ):void
		{
			startDrag( false );
			_config.stage.addEventListener( MouseEvent.MOUSE_UP, MOUSE_UP );
		}
		private function MOUSE_UP( e:MouseEvent ):void
		{
			stopDrag();
			_config.stage.removeEventListener( MouseEvent.MOUSE_UP, MOUSE_UP );
		}
		private function CLOSE( e:PanelEvent ):void
		{
			this.visible = false;
		}
	}
}