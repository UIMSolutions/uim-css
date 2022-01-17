module uim.css.containers.mediaquery;

@safe:
import uim.css;

class DCSSMediaQuery {
  this() { }
  this(string newCondition) { 
    this(); 
    this
    .condition(newCondition); }

  mixin(OProperty!("string", "condition"));

  protected STRINGAA _rules;

  auto rule(this O)(string selector) {
    return _rules.get(selector, null); }
  unittest {
    version(uim_css) {
      /// TODO
    }}

  O rule(this O)(string selector, string properties) {
    _rules[selector] = properties;
    return cast(O)this; }
  unittest {
    version(uim_css) {
      /// TODO
    }}

  O removeRule(this O)(string selector) {
    _rules.remove(selector); 
    return cast(O)this; }
  unittest {
    version(uim_css) {
      /// TODO
    }}

  auto opIndex(string selector) {
    return rule(selector); }
  unittest {
    version(uim_css) {
      /// TODO
    }}

  O opIndexAssign(this O)(string selector, string properties) {
    rule(selector, properties);
    return cast(O)this; }
  unittest {
    version(uim_css) {
      /// TODO
    }}

  override string toString() {
    string result;

    foreach(sel, props; _rules) result ~= sel~"{"~props~"}";

    if (condition) return "@media "~condition~"{"~result~"}";
    else return result; }
  unittest {
    version(uim_css) {
      /// TODO
    }}
}
auto CSSMediaQuery() { return new DCSSMediaQuery; }
auto CSSMediaQuery(string condition) { return new DCSSMediaQuery(condition); }
