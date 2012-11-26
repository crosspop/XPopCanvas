package
{
	import alternativa.gui.layout.LayoutManager;
	import alternativa.gui.theme.defaulttheme.container.panel.Panel;
	import alternativa.init.GUI;
	
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.ui.ContextMenu;
	
	import xpop.canvas.Config;
	import xpop.canvas.tool.Tools;
	import xpop.canvas.ui.DrawableSpace;
	import xpop.canvas.ui.UISpace;
	
	[ SWF( width="640", height="480", frameRate="60" ) ]
	public class XPopCanvas extends Sprite
	{
		public var config:Config;
		public var tools:Tools;
		private var drawableSpace:DrawableSpace;
		private var uiSpace:UISpace;
		public function XPopCanvas()
		{
			GUI.init( stage, false );
			LayoutManager.init( stage, [ this ] );
			contextMenu = new ContextMenu;
			contextMenu.hideBuiltInItems();
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;
			init();
		}
		public function init():void
		{
			config = new Config;
			tools = new Tools;
			drawableSpace = new DrawableSpace;
			uiSpace = new UISpace;
			addChild( drawableSpace );
			addChild( uiSpace );
			config.init( this );
			tools.init( config );
			drawableSpace.init( config );
			uiSpace.init( config );
		}
		public function openWindow( window:Panel ):void
		{
			if( uiSpace.contains( window ) != true )
				uiSpace.addChild( window );
		}
	}
}