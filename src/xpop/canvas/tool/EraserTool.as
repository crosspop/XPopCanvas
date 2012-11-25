package xpop.canvas.tool
{
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.geom.Matrix;
	
	import xpop.canvas.Config;
	
	public class EraserTool extends Sprite implements ITool
	{
		private var _config:Config;
		private var eraser:Shape;
		private var prevX:Number;
		private var prevY:Number;
		public function EraserTool()
		{
		}
		public function init( config:Config ):void
		{
			_config = config;
			eraser = new Shape;
		}
		public function onMouseDown():void
		{
			eraser.graphics.lineStyle( _config.eraserThickness, _config.eraserColor );
			eraser.graphics.moveTo( prevX = _config.mouseX, prevY = _config.mouseY );
		}
		public function onMouseUp():void
		{
			eraser.graphics.clear();
		}
		public function onMouseMove():void
		{
			eraser.graphics.clear();
			eraser.graphics.lineStyle( _config.eraserThickness, _config.eraserColor );
			eraser.graphics.moveTo( prevX, prevY );
			eraser.graphics.lineTo( prevX = _config.mouseX, prevY = _config.mouseY );
			var matrix:Matrix = _config.canvas.transform.matrix;
			matrix.invert();
			_config.canvas.bitmapData.draw( eraser, matrix );
		}
	}
}