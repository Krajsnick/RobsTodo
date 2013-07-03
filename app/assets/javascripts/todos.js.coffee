@TodoCtrl = ($scope) ->
  $scope.todos = [{text: "hallo", done: false},
                  {text: "this is so fun", done: true}]

  $scope.addTodo = ->
    $scope.todos.push(text: $scope.entry.text, done: false)
