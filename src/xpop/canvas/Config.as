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
		public static var stage:Stage;
		public static function get mouseX():Number
		{
			return stage.mouseX;
		}
		public static function get mouseY():Number
		{
			return stage.mouseY;
		}
		public static function get tabletPressure():Number
		{
			return Number( ExternalInterface.call( "tabletPressure" ) );
		}
		public static function get isEraser():Boolean
		{
			return Boolean( ExternalInterface.call( "isEraser" ) );
		}
		public static var canvas:Bitmap = new Bitmap( new BitmapData( 300, 300, false ) );
		public static var tool:ITool = BrushTool.getInstance();
		public static var brushThickness:Number = 10;
		public static var brushColor:uint = 0x000000;
		public static var eraserThickness:Number = 20;
		public static var eraserColor:uint = 0xFFFFFF;
		public static var enableTabletPressure:Boolean = true;
	}
}