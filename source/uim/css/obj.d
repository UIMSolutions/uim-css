module uim.css.obj;

@safe:
import uim.css;

class DCSSObj : Obj {
	this() { _init; }	 
	protected void _init() {}

	override string toString() {
		return "";
	}
}
auto CSSOBJ() { return new DCSSObj(); }

version(test_uim_css) { unittest {
	// TODO
}}

