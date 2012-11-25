package xpop.canvas.ui
{
	import alternativa.gui.data.DataProvider;
	import alternativa.gui.theme.defaulttheme.controls.dropDownMenu.DropDownMenu;
	
	import flash.display.Sprite;
	
	import xpop.canvas.Config;
	
	public class MenuBar extends Sprite
	{
		private var _config:Config;
		private var dropDownMenu:DropDownMenu;
		private var dropDownMenuData:DataProvider;
		public function MenuBar()
		{
		}
		public function init( config:Config ):void
		{
			_config = config;
			dropDownMenuData = new DataProvider;
			dropDownMenuData.addItem( { id:"0", label:"File", items:new DataProvider } );
			dropDownMenuData.addItem( { id:"1", label:"Image", items:new DataProvider } );
			dropDownMenuData.addItem( { id:"2", label:"Window", items:new DataProvider } );
			dropDownMenuData.addItem( { id:"3", label:"Help", items:new DataProvider } );
			dropDownMenu = new DropDownMenu;
			dropDownMenu.dataProvider = dropDownMenuData;
			addChild( dropDownMenu );
		}
		public override function set width( value:Number ):void
		{
			dropDownMenu.width = value;
		}
	}
}