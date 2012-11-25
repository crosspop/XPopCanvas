package xpop.canvas.ui
{
	import alternativa.gui.data.DataProvider;
	import alternativa.gui.event.DropDownMenuEvent;
	import alternativa.gui.theme.defaulttheme.controls.dropDownMenu.DropDownMenu;
	
	import flash.display.Sprite;
	
	import xpop.canvas.Config;
	import xpop.canvas.ui.menubar.FileMenu;
	import xpop.canvas.ui.menubar.HelpMenu;
	import xpop.canvas.ui.menubar.ImageMenu;
	import xpop.canvas.ui.menubar.WindowMenu;
	
	public class MenuBar extends Sprite
	{
		private var _config:Config;
		private var dropDownMenu:DropDownMenu;
		private var dropDownMenuData:DataProvider;
		private var fileMenu:FileMenu;
		private var imageMenu:ImageMenu;
		private var windowMenu:WindowMenu;
		private var helpMenu:HelpMenu;
		public function MenuBar()
		{
		}
		public function init( config:Config ):void
		{
			_config = config;
			dropDownMenuData = new DataProvider;
			fileMenu = new FileMenu;
			fileMenu.init( _config );
			dropDownMenuData.addItem( { label:"File", items:fileMenu } );
			imageMenu = new ImageMenu;
			imageMenu.init( _config );
			dropDownMenuData.addItem( { label:"Image", items:imageMenu } );
			windowMenu = new WindowMenu;
			windowMenu.init( _config );
			dropDownMenuData.addItem( { label:"Window", items:windowMenu } );
			helpMenu = new HelpMenu;
			helpMenu.init( _config );
			dropDownMenuData.addItem( { label:"Help", items:helpMenu } );
			dropDownMenu = new DropDownMenu;
			dropDownMenu.dataProvider = dropDownMenuData;
			dropDownMenu.addEventListener( DropDownMenuEvent.SELECT, SELECT );
			addChild( dropDownMenu );
		}
		public override function set width( value:Number ):void
		{
			dropDownMenu.width = value;
		}
		private function SELECT( e:DropDownMenuEvent ):void
		{
			var handler:Function = e.data[ "onSelect" ] as Function;
			if( handler != null )
				handler();
		}
	}
}