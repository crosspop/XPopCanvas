package
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.MouseEvent;
	import flash.external.ExternalInterface;
	
	import xpop.canvas.Config;
	import xpop.canvas.ui.DrawableSpace;
	
	public class XPopCanvas extends Sprite
	{
		private var drawableSpace:DrawableSpace;
		//private var menuBar;
		//private var toolBox;
		public function XPopCanvas()
		{
			init();
		}
		public function init():void
		{
			Config.stage = stage;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;
			drawableSpace = new DrawableSpace;
			addChild( drawableSpace );
			drawableSpace.init();
		}
	}
}