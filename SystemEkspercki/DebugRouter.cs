﻿using Mommosoft.ExpertSystem;

namespace SystemEkspercki
{
	public class DebugRouter : Router
	{
		public override string Name
		{
			get { return "DebugRouter"; }
		}

		public override int Priority
		{
			get { return 10; }
		}

		public override bool Query(string logicalName)
		{
			return (logicalName.Equals("wwarning") ||
					logicalName.Equals("werror") ||
					logicalName.Equals("wtrace") ||
					logicalName.Equals("wdialog") ||
					logicalName.Equals("wclips") ||
					logicalName.Equals("wdisplay"));
		}

		public override int Print(string logicalName, string message)
		{
			System.Console.Write(message);
			return 1;
		}
	}
}
