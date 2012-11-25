package xpop.canvas.ui.window.toolbox
{
	import alternativa.gui.theme.defaulttheme.controls.buttons.ToggleButton;
	
	import xpop.canvas.Config;
	
	public class BrushToolButton extends ToggleButton
	{
		public var _config:Config;
		public function BrushToolButton()
		{
		}
		public function init( config:Config ):void
		{
			_config = config;
			label = "Pencil";
		}
	}
}