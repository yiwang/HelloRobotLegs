package org.robotlegs.examples.helloworld
{
	import flash.display.DisplayObjectContainer;
	
	import org.robotlegs.examples.helloworld.view.SimpleView;
	import org.robotlegs.examples.helloworld.view.SimpleViewMediator;
	import org.robotlegs.examples.helloworld.model.SimpleModel;
	import org.robotlegs.examples.helloworld.controller.*;
	
	import org.robotlegs.mvcs.Context;
	
	public class MainContext extends Context
	{
		public function MainContext(contextView:DisplayObjectContainer=null, autoStartup:Boolean=true)
		{
			//TODO: implement function
			super(contextView, autoStartup);
		}
		
		override public function startup():void
		{
			mediatorMap.mapView(SimpleView, SimpleViewMediator);
			injector.mapSingleton(SimpleModel);
			commandMap.mapEvent(GreetingEvent.REQUEST_GREETING, RequestGreetingCommand);
			
			contextView.addChild(new SimpleView());
		}
	}
}