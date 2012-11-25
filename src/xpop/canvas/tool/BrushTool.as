package xpop.canvas.tool
{
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.geom.Matrix;
	
	import xpop.canvas.Config;
	
	public class BrushTool extends Sprite implements ITool
	{
		private var _config:Config;
		private var brush:Shape;
		private var prevX:Number;
		private var prevY:Number;
		public function BrushTool()
		{
		}
		public function init( config:Config ):void
		{
			_config = config;
			brush = new Shape;
		}
		public function onMouseDown():void
		{
			brush.graphics.lineStyle( _config.brushThickness, _config.brushColor );
			brush.graphics.moveTo( prevX = _config.mouseX, prevY = _config.mouseY );
		}
		public function onMouseUp():void
		{
			brush.graphics.clear();
		}
		public function onMouseMove():void
		{
			brush.graphics.clear();
			brush.graphics.lineStyle( _config.brushThickness, _config.brushColor );
			brush.graphics.moveTo( prevX, prevY );
			brush.graphics.lineTo( prevX = _config.mouseX, prevY = _config.mouseY );
			var matrix:Matrix = _config.canvas.transform.matrix;
			matrix.invert();
			_config.canvas.bitmapData.draw( brush, matrix );
		}
	}
}