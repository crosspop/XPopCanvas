package xpop.canvas.tool
{
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.geom.Matrix;
	
	import xpop.canvas.Config;
	
	public class BrushTool extends Sprite implements ITool
	{
		private static var instance:BrushTool = new BrushTool;
		private var brush:Shape;
		private var prevX:Number;
		private var prevY:Number;
		public function BrushTool()
		{
			if( instance != null )
				throw new Error( "싱글턴임" );
			else
				init();
		}
		public static function getInstance():BrushTool
		{
			return instance;
		}
		public function init():void
		{
			brush = new Shape;
		}
		public function onMouseDown():void
		{
			brush.graphics.lineStyle( Config.brushThickness, Config.brushColor );
			brush.graphics.moveTo( prevX = Config.mouseX, prevY = Config.mouseY );
		}
		public function onMouseUp():void
		{
			brush.graphics.clear();
		}
		public function onMouseMove():void
		{
			brush.graphics.clear();
			if( Config.enableTabletPressure )
				brush.graphics.lineStyle( Config.brushThickness * Config.tabletPressure, Config.brushColor );
			else
				brush.graphics.lineStyle( Config.brushThickness, Config.brushColor );
			brush.graphics.moveTo( prevX, prevY );
			brush.graphics.lineTo( prevX = Config.mouseX, prevY = Config.mouseY );
			var matrix:Matrix = Config.canvas.transform.matrix;
			matrix.invert();
			Config.canvas.bitmapData.draw( brush, matrix );
		}
	}
}