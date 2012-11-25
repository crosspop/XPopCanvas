package xpop.canvas.ui
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	
	import xpop.canvas.Config;
	
	public class DrawableSpace extends Sprite
	{
		public var background:Background;
		public var canvas:Bitmap;
		public function DrawableSpace()
		{
		}
		public function init():void
		{
			background = new Background;
			canvas = Config.canvas;
			canvas.x = stage.stageWidth/2 - canvas.width/2;
			canvas.y = stage.stageHeight/2 - canvas.height/2;
			addChild( background );
			addChild( canvas );
			background.init();
			addEventListener( MouseEvent.MOUSE_DOWN, MOUSE_DOWN );
		}
		private function MOUSE_DOWN( e:MouseEvent ):void
		{
			Config.tool.onMouseDown();
			stage.addEventListener( MouseEvent.MOUSE_MOVE, MOUSE_MOVE );
			stage.addEventListener( MouseEvent.MOUSE_UP, MOUSE_UP );
		}
		private function MOUSE_UP( e:MouseEvent ):void
		{
			Config.tool.onMouseUp();
			stage.removeEventListener( MouseEvent.MOUSE_MOVE, MOUSE_MOVE );
			stage.removeEventListener( MouseEvent.MOUSE_UP, MOUSE_UP );
		}
		private function MOUSE_MOVE( e:MouseEvent ):void
		{
			Config.tool.onMouseMove();
		}
	}
}