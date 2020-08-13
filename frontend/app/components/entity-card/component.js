import Component from '@ember/component'
import Ember from 'ember';
const { computed } = Ember;

export default Component.extend({
    imageUrl: "https://via.placeholder.com/150",
    entityName: computed.alias('model.name')
});