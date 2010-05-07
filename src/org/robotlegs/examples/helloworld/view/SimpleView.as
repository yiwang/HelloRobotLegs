package org.robotlegs.examples.helloworld.view
{
	import flash.display.Sprite;
	import flash.text.TextField;
	
	public class SimpleView extends Sprite
	{
		private var greetingDisplay:TextField;
		
		public function SimpleView()
		{
			greetingDisplay = new TextField();
			addChild(greetingDisplay);
		}
		
		public function updateGreating(message:String):void
		{
			greetingDisplay.text = message;	
		}
		

	}
}