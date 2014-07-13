App.Task = DS.Model.extend({
  title: DS.attr('string'),
  description: DS.attr('string'),
  due_on: DS.attr(),
  completed_on: DS.attr()
})