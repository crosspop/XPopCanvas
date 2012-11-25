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
		public var app:XPopCanvas;
		public function get stage():Stage
		{
			return app.stage;
		}
		public function get mouseX():Number
		{
			return app.stage.mouseX;
		}
		public function get mouseY():Number
		{
			return app.stage.mouseY;
		}
		public var canvas:Bitmap;
		public var currentTool:ITool;
		public var brushThickness:Number;
		public var brushColor:uint;
		public var eraserThickness:Number;
		public var eraserColor:uint;
		public function Config()
		{
		}
		public function init( app:XPopCanvas ):void
		{
			this.app = app;
			canvas = new Bitmap( new BitmapData( 300, 300, false ) );
			brushThickness = 5;
			brushColor = 0x000000;
			eraserThickness = 10;
			eraserColor = 0xFFFFFF;
		}
	}
}