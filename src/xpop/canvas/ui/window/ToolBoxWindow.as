package xpop.canvas.ui.window
{
	import alternativa.gui.theme.defaulttheme.container.panel.Panel;
	
	import xpop.canvas.Config;
	
	public class ToolBoxWindow extends Panel
	{
		private var _config:Config;
		public function ToolBoxWindow()
		{
		}
		public function init( config:Config ):void
		{
			_config = config;
		}
	}
}