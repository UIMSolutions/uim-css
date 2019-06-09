module uim.css.rule;

import uim.css;

class DCSSRule : DCSSObj {
	this() { super(); }
	this(string aSelector) { this(); this.selector = aSelector; }
	this(string aSelector, string[string] someProperties) { this(aSelector); this.parameters.items = someProperties; }

	override protected void init() { super.init; _parameters = MapString; }

	mixin(PropertyDefinition!("string", "selector"));
	mixin(PropertyDefinition!("DMapString", "parameters"));

	override string toString() {
		return selector~" { "~this.parameters.toCSS~" }";
	}
}
auto CSSRule() { return new DCSSRule(); }
auto CSSRule(string selector) { return new DCSSRule(selector); }
auto CSSRule(string selector, string[string] newValues) { return new DCSSRule(selector, newValues); }

unittest {
	writeln("Testing ", __MODULE__);

	auto rule = CSSRule;
	writeln(CSSRule("body", ["background-color": "lightgreen"]));
}
