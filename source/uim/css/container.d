module uim.css.container;

import uim.css;

class DCSSContainer {
   DCSSObj[] _cssItems;

  alias opEquals = Object.opEquals;
  bool opEquals(string css) { return toString == css; }
	bool opEquals(DCSSContainer obj) { return toString == obj.toString; }

	protected void init() { }
}
auto CSSContainer() { return new DCSSContainer(); }

unittest {
}