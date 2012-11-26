package xpop.canvas.ui.menubar
{
	import alternativa.gui.data.DataProvider;
	
	import xpop.canvas.Config;
	
	public class HelpMenu extends DataProvider
	{
		private var _config:Config;
		public function HelpMenu()
		{
		}
		public function init( config:Config ):void
		{
			_config = config;
			addItem( { label:"About XPopCanvas", onSelect:function():void
			{
				_config.app.openWindow( _config.windows.aboutWindow );
			} } );
		}
	}
}