package xpop.canvas.ui
{
	import alternativa.gui.base.GUIobject;
	import alternativa.gui.layout.IStageSizeListener;
	
	import xpop.canvas.Config;
	
	public class UISpace extends GUIobject implements IStageSizeListener
	{
		private var _config:Config;
		private var menuBar:MenuBar;
		public function UISpace()
		{
		}
		public function init( config:Config ):void
		{
			_config = config;
			menuBar = new MenuBar;
			addChild( menuBar );
			menuBar.init( _config );
		}
		override protected function draw():void
		{
			super.draw();
			if( menuBar != null )
				menuBar.width = _config.stage.stageWidth;
		}
	}
}