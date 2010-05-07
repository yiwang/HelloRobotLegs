package org.robotlegs.examples.helloworld.controller
{
	import flash.events.Event;
	
	public class GreetingEvent extends Event
	{
		public static const GREET:String = "GREET"
		public var message:String;
		public static const REQUEST_GREETING:String = "REQUEST_GREETING";
			
		public function GreetingEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			//TODO: implement function
			super(type, bubbles, cancelable);
		}
	}
}