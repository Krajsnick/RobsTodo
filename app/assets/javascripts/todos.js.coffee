app = angular.module("RobsTodo", ["ngResource"])

app.factory "Todo", ($resource) ->
  $resource("/todos/:id", {id: "@id"}, {update: {method: "PUT"}})

@TodoCtrl = ($scope, Todo) ->
  $scope.todos = Todo.query()

  $scope.addTodo = ->
    $scope.todos.push(text: $scope.entry.text, done: false)
