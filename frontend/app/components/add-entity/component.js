import Ember from 'ember';

const { 
    computed,
    inject: { service },
    isPresent
 } = Ember;

export default Ember.Component.extend({
    store: service(),

    newEntity: computed('modelName', {
        get() {
            return this.store.createRecord(this.modelName);
        }
    }),

    actions: {
        saveEntity() {
            debugger;
            if(isPresent(this.newEntity)) {
                this.newEntity.save();
            }
        }
    }
});