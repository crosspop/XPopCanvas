package xpop.canvas.ui.menubar
{
	import alternativa.gui.data.DataProvider;
	
	import xpop.canvas.Config;
	
	public class WindowMenu extends DataProvider
	{
		private var _config:Config;
		public function WindowMenu()
		{
		}
		public function init( config:Config ):void
		{
			_config = config;
			addItem( { label:"ToolBox", onSelect:function():void
			{
				_config.windows.toolBoxWindow.visible = true;
			} } );
		}
	}
}