package
{
	import Box2D.Collision.b2AABB;
	import Box2D.Common.Math.b2Vec2;
	import Box2D.Dynamics.b2World;
	
	import flash.display.MovieClip;
	
	public class index extends MovieClip
	{
		protected var _world:b2World;
		public static const RATIO:Number=40;
		
		public function index()
		{
			setupWorld();
		}
		
		private function setupWorld():void
		{
			var universeSize:b2AABB=new b2AABB();
			universeSize.lowerBound.Set(-3000/RATIO,-3000/RATIO);
			universeSize.upperBound.Set(3000/RATIO,3000/RATIO);
			
			var gravity:b2Vec2=new b2Vec2(0,9.8);
			
			var ignoreSleeping:Boolean=true;
			
			_world=new b2World(gravity,ignoreSleeping);
			
			trace(_world.GetBodyCount());
			
		}
	}
}