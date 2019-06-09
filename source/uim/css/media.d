module uim.css.media;

import uim.css;

class DCSSMedia : DCSSRuleSet {
	this() { super(); }
	this(string aName) { this(); this.name = aName; }
	this(string aName, DCSSObj[] someRules) { this(aName); this.rules = someRules; }
	this(string aName, DCSSRuleSet aRuleSet) { this(aName); this.rules = aRuleSet.rules; }

	override protected void init() { super.init; }

	mixin(PropertyDefinition!("string", "name"));

	override string toString() {
		return "@media %s { \n%s\n }".format(this.name, super.toString);
	}
}
auto CSSMedia() { return new DCSSMedia(); }
auto CSSMedia(string aName) { return new DCSSMedia(aName); }

enum CSSMediaTypes : string {
	All = "all", //Used for all media type devices
	Print = "print", // Used for printers
	Screen = "screen", //Used for computer screens, tablets, smart-phones etc.
	Speech = "speech" // 	Used for screenreaders that "reads" the page out loud
}

unittest {
	writeln("Testing ", __MODULE__);

	auto media = CSSMedia("screen and (min-width: 480px)");
	writeln(media);
	media.rules = media.rules ~ CSSRule("body", ["background-color": "lightgreen"]);
	writeln(media);
}
