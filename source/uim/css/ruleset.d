module uim.css.ruleset;

import uim.css;

class DCSSRuleSet : DCSSObj {
	this() { super(); }
	this(DCSSObj[] someRules) { this(); this.rules = someRules.dup; }

	override protected void init() { super.init; }

	mixin(PropertyDefinition!("DCSSObj[]", "rules"));

	O add(this O)(DCSSRule aRule) { _rules ~= aRule; return cast(O)this; }
	O add(this O)(DCSSMedia aRule) { _rules ~= aRule; return cast(O)this; }

	override string toString() {
		string[] rs;
		foreach(rule; rules) rs ~= rule.toString;
		return rs.join("\n");
	}
}
auto CSSRuleSet() { return new DCSSRuleSet(); }
auto CSSRuleSet(DCSSObj[] someRules) { return new DCSSRuleSet(someRules); }

unittest {
	writeln("Testing ", __MODULE__);

	auto ruleSet = CSSRuleSet;
	ruleSet.rules = ruleSet.rules ~ CSSRule("body", ["background-color": "lightgreen"]);
	writeln(ruleSet);
}
