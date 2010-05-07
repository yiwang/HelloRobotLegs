package org.robotlegs.examples.helloworld.view
{
	import org.robotlegs.examples.helloworld.controller.GreetingEvent;
	import org.robotlegs.examples.helloworld.view.SimpleView;
	import org.robotlegs.mvcs.Mediator;
	
	public class SimpleViewMediator extends Mediator
	{
		[Inject]
		public var simpleView:SimpleView;
		
		override public function onRegister():void
		{
			eventMap.mapListener(eventDispatcher, GreetingEvent.GREET, onGreet);
			
			dispatch(new GreetingEvent(GreetingEvent.REQUEST_GREETING));
		}
		
		private function onGreet(event:GreetingEvent):void
		{
			simpleView.updateGreating(event.message);
		}
	}
}