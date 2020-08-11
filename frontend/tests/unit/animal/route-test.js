import { module, test } from 'qunit';
import { setupTest } from 'ember-qunit';

module('Unit | Route | animal', function(hooks) {
  setupTest(hooks);

  test('it exists', function(assert) {
    let route = this.owner.lookup('route:animal');
    assert.ok(route);
  });
});
