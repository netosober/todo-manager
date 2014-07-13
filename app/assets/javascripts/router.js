App.Router.map(function() {
  this.resource('tasks', { path: '/' }, function() {
    this.resource('lead', { path: '/leads/:id' });
  })
})
