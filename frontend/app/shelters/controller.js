import Ember from 'ember';

const { 
    inject: {
        service
    },
    get,
    set,
    computed
} = Ember

export default Ember.Controller.extend({
    modal: service(),

    modelName: 'shelter',
    createModalTitle: computed('modelName', {
        get() {
            return 'Create ' + get(this,'modelName').camelize();
        }
    }),

    actions: {
        openAddModal() {
            set(this, 'showAddModal', true);
        }
    }
})