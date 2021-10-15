module uim.css.containers.mediaqueries;

@safe:
import uim.css;

class DCSSMediaQueries {
  this() {
    _queries["default"] = CSSMediaQuery;
  }

  protected DCSSMediaQuery[string] _queries;

  bool newRule(string name, string properties) {
    if ("default" in _queries) return _queries["default"].newRule(name, properties);
    return false; }
  unittest {
    version(uim_css) {
      /// TODO
    }}

  bool newRule(string query, string name, string properties) {
    if (query !in _queries) _queries[query] = CSSMediaQuery;
    return _queries[query].newRule(name, properties); }
  unittest {
    version(uim_css) {
      /// TODO
    }}

  bool addToRule(string name, string properties) {
    if ("default" in _queries) return _queries["default"].addToRule(name, properties);
    return false; }
  unittest {
    version(uim_css) {
      /// TODO
    }}

  bool addToRule(string query, string name, string properties) {
    if (query !in _queries) _queries[query] = CSSMediaQuery;
    return _queries[query].addToRule(name, properties); }
  unittest {
    version(uim_css) {
      /// TODO
    }}

  bool removeRule(string name) {
    if ("default" in _queries) return _queries["default"].removeRule(name);
    return false; }
  unittest {
    version(uim_css) {
      /// TODO
    }}

  bool removeRule(string query, string name, string properties) {
    if (query !in _queries) _queries[query] = CSSMediaQuery;
    return _queries[query].removeRule(name); }
  unittest {
    version(uim_css) {
      /// TODO
    }}

  override string toString() {
    string result;

    foreach(query; queries.byValue) if (query) result ~= query.toString; 

    return result;
  } 
  unittest {
    version(uim_css) {
      /// TODO
    }}

  override string toString(string[] queryNames) {
    foreach(query; queries.byValue) if (query) result ~= query.toString;     
  } 
  unittest {
    version(uim_css) {
      /// TODO
    }}
}
auto CSSMediaQueries() { return new DCSSMediaQueries; }
