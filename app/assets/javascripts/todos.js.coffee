@TodoCtrl = ($scope) ->
  $scope.todos = [{text: "hallo", done: "false"}]

  $scope.addTodo = ->
    $scope.todos.push(text: $scope.entry.text, done: false)
