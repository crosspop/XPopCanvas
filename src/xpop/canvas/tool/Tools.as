package xpop.canvas.tool
{
	import xpop.canvas.Config;

	public class Tools
	{
		private var _config:Config;
		public var brushTool:BrushTool;
		public var eraserTool:EraserTool;
		public function Tools()
		{
		}
		public function init( config:Config ):void
		{
			_config = config;
			brushTool = new BrushTool;
			brushTool.init( _config );
			eraserTool = new EraserTool;
			eraserTool.init( _config );
			_config.currentTool = brushTool;
		}
	}
}