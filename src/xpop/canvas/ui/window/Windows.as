package xpop.canvas.ui.window
{
	import xpop.canvas.Config;

	public class Windows
	{
		private var _config:Config;
		public var toolBoxWindow:ToolBoxWindow;
		public function Windows()
		{
		}
		public function init( config:Config ):void
		{
			_config = config;
			toolBoxWindow = new ToolBoxWindow;
			toolBoxWindow.init( _config );
		}
	}
}