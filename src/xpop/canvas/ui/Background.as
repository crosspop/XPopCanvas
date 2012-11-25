package xpop.canvas.ui
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	public class Background extends Sprite
	{
		public function Background()
		{
		}
		public function init():void
		{
			render();
			stage.addEventListener( Event.RESIZE, RESIZE );
		}
		protected function render():void
		{
			graphics.clear();
			graphics.beginFill( 0x808080 );
			graphics.drawRect( 0, 0, stage.stageWidth, stage.stageHeight );
			graphics.endFill();
		}
		private function RESIZE( e:Event ):void
		{
			render();
		}
	}
}