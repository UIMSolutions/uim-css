module uim.css.container;

import uim.css;

class DCSSContainer {
   DCSSObj[] _cssItems;

	protected void init() { }
}
auto CSSContainer() { return new DCSSContainer(); }

unittest {
	writeln("Testing ", __MODULE__);

	writeln(CSSContainer);
}