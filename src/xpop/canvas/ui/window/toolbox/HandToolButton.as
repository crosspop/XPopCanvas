package xpop.canvas.ui.window.toolbox
{
	import alternativa.gui.theme.defaulttheme.controls.buttons.ToggleButton;
	
	import flash.events.MouseEvent;
	
	import xpop.canvas.Config;
	
	public class HandToolButton extends ToggleButton
	{
		public var _config:Config;
		public function HandToolButton()
		{
		}
		public function init( config:Config ):void
		{
			_config = config;
			label = "Hand";
			mouseEnabled = true;
			addEventListener( MouseEvent.MOUSE_DOWN, MOUSE_DOWN );
		}
		private function MOUSE_DOWN( e:MouseEvent ):void
		{
			_config.currentTool = _config.app.tools.handTool;
		}
	}
}