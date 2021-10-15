module uim.css.containers.mediaquery;

@safe:
import uim.css;

class DCSSMediaQuery {
  this() { }
  this(string newCondition) { 
    this(); this.condition = newCondition; }

  mixin(OProperty!("string", "condition")

  protected STRINGAA _rules;
  bool newRule(string name, string properties) {
    _rules[name] = properties;
    return true;
  }
  unittest {
    version(uim_css) {
      /// TODO
    }}

  bool addToRule(string name, string properties) {
    if (!name !in _rules) _rules[name] = properties;
    else _rules[name] ~= properties;
    return true;
  }
  unittest {
    version(uim_css) {
      /// TODO
    }}

  bool removeRule(string name) {
    if (name !in _rules) return false;
    _rules.remove(name); 
    return true;
  }
  unittest {
    version(uim_css) {
      /// TODO
    }}

  string toString() {
    string result;

    foreach(k, v; rules) { result ~= k~"{"~v~"}";

    if (condition) return "@media "~condition~"{"~result~"}";
    else return result;
  }
  unittest {
    version(uim_css) {
      /// TODO
    }}
}
auto CSSMediaQuery() { return new DCSSMediaQuery; }
auto CSSMediaQuery(string condition) { return new DCSSMediaQuery(condition); }
