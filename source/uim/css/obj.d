module uim.css.obj;

import uim.css;

class DCSSObj : Obj {
	this() { _init; }	 
	protected void _init() {}

	override string toString() {
		return super.toString;
	}
}
auto CSSOBJ() { return new DCSSObj(); }

unittest {
}

