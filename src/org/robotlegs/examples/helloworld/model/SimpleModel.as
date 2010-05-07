package org.robotlegs.examples.helloworld.model
{
	import org.robotlegs.mvcs.Actor;
	import org.robotlegs.examples.helloworld.controller.GreetingEvent;
	
	public class SimpleModel extends Actor
	{
		private var message:String;
		
		public function SimpleModel()
		{
			message = "Hello RobotLegs!";
			
		}
		
		public function requestGreeting():void
		{
			var greetingEvent:GreetingEvent = new GreetingEvent(GreetingEvent.GREET);
			greetingEvent.message = message;
			
			dispatch(greetingEvent);
		}
	}
}