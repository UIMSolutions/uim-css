module uim.css.classes.css;

@safe:
import uim.css;

class DCSS {
  this() {}
  this(string newContent) { this.content(newContent); }

  // Resulting contet
  mixin(XString!("content"));
  unittest {}

  O rule(this O)(string selector, string[string] values) {
    return content("%s%s".format(selector, values.toCss));
  }
  unittest {}

  // Compare with toString result
  bool opEquals(string txt) { return (txt == toString); }

  string toHTML() {
    return `<style>`~content~`</style>`;
  }
  unittest {
    assert(CSS("test").toHTML == `<style>test</style>`);
  }

  override string toString() {
    return content;
  }
}
auto CSS() { return new DCSS(); }
auto CSS(string newContent) { return new DCSS(newContent); }

unittest {}