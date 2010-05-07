package
{
	import flash.display.Sprite;
	
	import org.robotlegs.examples.helloworld.MainContext;
	
	public class Main extends Sprite
	{
		private var context:MainContext;
		
		public function Main()
		{
			context = new MainContext(this);
		}
	}
}