package xpop.canvas
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Stage;
	import flash.external.ExternalInterface;
	
	import xpop.canvas.tool.BrushTool;
	import xpop.canvas.tool.ITool;

	public class Config
	{
		private var _app:XPopCanvas;
		public function get stage():Stage
		{
			return _app.stage;
		}
		public function get mouseX():Number
		{
			return _app.stage.mouseX;
		}
		public function get mouseY():Number
		{
			return _app.stage.mouseY;
		}
		public var canvas:Bitmap;
		public var tool:ITool;
		public var brushThickness:Number;
		public var brushColor:uint;
		public var eraserThickness:Number;
		public var eraserColor:uint;
		public function Config()
		{
		}
		public function init( app:XPopCanvas ):void
		{
			_app = app;
			canvas = new Bitmap( new BitmapData( 300, 300, false ) );
			brushThickness = 5;
			brushColor = 0x000000;
			eraserThickness = 10;
			eraserColor = 0xFFFFFF;
		}
	}
}