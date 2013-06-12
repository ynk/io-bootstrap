/**
 * User: y_nk
 * Date: 10/06/13 19:24
 */
package app
{

	import com.greensock.TweenNano;

	import flash.display.Shape;
	import flash.events.Event;
	import flash.utils.getDefinitionByName;

	import martian.m4gic.display.Project;



	public class Preloader extends Project
	{
		private var shape:Shape;

		private var config:Object = {},
					loading:Number = 0;

		public function Preloader() { super({ width:800, height: 600, framerate: 30 }); }

		override protected function initialize():void
		{
			shape = addChild(new Shape()) as Shape;

			draw();
			stage.addEventListener(Event.ENTER_FRAME, progress);
		}

		private function progress(e:Event):void
		{
			var done:Boolean = (loading >= 1 && framesLoaded == totalFrames);

			if (!done)
			{
				loading += 0.01;// loaderInfo.bytesLoaded / loaderInfo.bytesTotal;
				draw();
			}
			else
			{
				stage.removeEventListener(Event.ENTER_FRAME, progress);

				var then:Function = function():void
					{ TweenNano.to(shape, 0.3, { scaleX: 0, alpha: 0, onComplete: startup }); };

				TweenNano.to(shape, 0.3, { rotation:-90, onComplete:then });
			}
		}

		private function draw(color:int = 0):void
		{
			shape.graphics.clear();
			shape.graphics.beginFill(color);
			shape.graphics.drawRect(- int(loading * stage.stageWidth * .5), 0, int(loading * stage.stageWidth), 2);
			shape.graphics.endFill();

			shape.x = stage.stageWidth * .5;
			shape.x = int(shape.x);

			shape.y = stage.stageHeight * .5;
			shape.y = int(shape.y);
		}

		public function startup():void
		{
			nextFrame();

			var main:* = getDefinitionByName("Main") as Class;
				main = new main(config);

			stage.addChildAt(main, 0);
			dispose();
		}

		override public function resize():void { draw(); }

		override protected function dispose():void { stage.removeChild(this); }
	}
}
