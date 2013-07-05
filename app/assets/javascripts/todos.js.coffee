app = angular.module("RobsTodo", ["ngResource"])

app.config(["$httpProvider", (provider) ->
  provider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
])

app.factory "Todo", ($resource) ->
  $resource("/todos/:id", {id: "@id"}, {update: {method: "PUT"}})

@TodoCtrl = ($scope, Todo) ->
  $scope.todos = Todo.query()

  $scope.addTodo = ->
    Todo.save({text: $scope.entry.text, done: false})
    $scope.todos.push(text: $scope.entry.text, done: false)
    $scope.entry.text = ''

  $scope.destroyTodo = (todo) ->
    Todo.remove(todo)
    $scope.todos.splice($scope.todos.indexOf(todo), 1)