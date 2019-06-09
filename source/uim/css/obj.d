module uim.css.obj;

import uim.css;

class DCSSObj : Obj {
	this() { init; }
	 
	protected void init() {}

	override string toString() {
		return super.toString;
	}
}
auto CSSOBJ() { return new DCSSObj(); }

unittest {
	writeln("Testing ", __MODULE__);
}

