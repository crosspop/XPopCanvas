package xpop.canvas.tool
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	
	import xpop.canvas.Config;
	
	public class HandTool extends Sprite implements ITool
	{
		private var _config:Config;
		private var dragX:Number;
		private var dragY:Number;
		private var originX:Number;
		private var originY:Number;
		public function HandTool()
		{
		}
		public function init( config:Config ):void
		{
			_config = config;
		}
		public function onMouseDown():void
		{
			var canvas:Bitmap = _config.canvas;
			dragX = _config.mouseX;
			dragY = _config.mouseY;
			originX = canvas.x;
			originY = canvas.y;
		}
		public function onMouseUp():void
		{
			var canvas:Bitmap = _config.canvas;
			canvas.x = originX + _config.mouseX - dragX;
			canvas.y = originY + _config.mouseY - dragY;
		}
		public function onMouseMove():void
		{
			var canvas:Bitmap = _config.canvas;
			canvas.x = originX + _config.mouseX - dragX;
			canvas.y = originY + _config.mouseY - dragY;
		}
	}
}