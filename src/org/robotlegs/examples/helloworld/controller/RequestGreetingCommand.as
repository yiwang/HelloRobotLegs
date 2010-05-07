package org.robotlegs.examples.helloworld.controller
{
	import org.robotlegs.examples.helloworld.model.SimpleModel;
	import org.robotlegs.mvcs.Command;
	
	public class RequestGreetingCommand extends Command
	{
		[Inject]
		public var simpleModel:SimpleModel;
		
		override public function execute():void
		{
			simpleModel.requestGreeting();
		}
	}
}