module uim.css.containers.mediaqueries;

@safe:
import uim.css;

class DCSSMediaQueries {
  this() {
    _queries["default"] = CSSMediaQuery;
  }

  protected DCSSMediaQuery[string] _queries;

  auto query(string queryName = null) {
    if (queryName) return _queries.get(queryName, null);
    return _queries.get("default", null); }
  unittest {
    version(uim_css) {
      /// TODO
    }}

  O query(this O)(string queryName, string condition) {
    if (queryName !in _queries) _queries[queryName] = CSSMediaQuery(condition);
    return cast(O)this; }
  unittest {
    version(uim_css) {
      /// TODO
    }}

  auto rule(this O)(string name) {
    return _queries["default"].rule(name, properties); }
  unittest {
    version(uim_css) {
      /// TODO
    }}

  O rule(this O)(string name, string properties) {
    _queries["default"].rule(name, properties); 
    return cast(O)this; }
  unittest {
    version(uim_css) {
      /// TODO
    }}

  O rule(this O)(string queryName, string name, string properties) {
    if (queryName in _queries) _queries[query].rule(name, properties); 
    return cast(O)this; }
  unittest {
    version(uim_css) {
      /// TODO
    }}

 O removeRule(this O)(string name) {
    _queries["default"].removeRule(name); 
    return cast(O)this; }
  unittest {
    version(uim_css) {
      /// TODO
    }}

  O removeRule(this O)(string queryName, string name) {
    if (queryName in _queries) _queries[queryName].removeRule(name); 
    return cast(O)this; }
  unittest {
    version(uim_css) {
      /// TODO
    }}

  override string toString() {
    string result;

    foreach(query; _queries.byValue) if (query) result ~= query.toString; 

    return result;
  } 
  unittest {
    version(uim_css) {
      /// TODO
    }}

  string toString(string[] queryNames) {
    string result;
    foreach(query; _queries.byValue) if (query) result ~= query.toString;     
    return result;
  } 
  unittest {
    version(uim_css) {
      /// TODO
    }}
}
auto CSSMediaQueries() { return new DCSSMediaQueries; }
