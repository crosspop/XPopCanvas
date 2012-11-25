package xpop.canvas.ui.menubar
{
	import alternativa.gui.data.DataProvider;
	
	import xpop.canvas.Config;
	
	public class FileMenu extends DataProvider
	{
		private var _config:Config;
		public function FileMenu()
		{
		}
		public function init( config:Config ):void
		{
			_config = config;
		}
	}
}