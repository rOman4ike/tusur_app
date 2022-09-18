angular
  .module("specialtiesApp", [])
  .controller('specialtyCtrl', ['$scope', '$http', ($scope, $http) ->
    $scope.availableSpec = [] # Доступные направления
    $scope.availableSpecSubjects = [] # Предметы для направлений
    $scope.selectedSpec = [] # Выбранные направления
    $scope.paid = true # Фильтр платных направлений
    $scope.budget = true # Фильтр бесплатных направлений

    # Получение данных в формате JSON и их последующая обработка
    $http.get("/specialties/1/edit.json").then (response) ->
      
      if response.status == 200
        $scope.availableSpec = response.data[0].slice(0)
        $scope.availableSpecSubjects = response.data[1].slice(0)

        console.log($scope.availableSpec)
        
        for i in [0...response.data[0].length]
          for j in [0...response.data[2].length]
            if response.data[0][i].id == response.data[2][j].specialty_id
              $scope.selectedSpec.push(response.data[0][i])
              $scope.availableSpec = $scope.availableSpec.filter((item) -> item.id != response.data[2][j].specialty_id)
      else
        console.log("error")

    # Добавление направлений
    $scope.addItemToList = (spec, index) ->
      $scope.availableSpec = $scope.availableSpec.filter((item) -> item.id != index)
      $scope.selectedSpec.push(spec)

    # Удаление направлений из выбранных
    $scope.removeItemToList = (spec, index) ->
      $scope.selectedSpec = $scope.selectedSpec.filter((item) -> item.id != index)
      $scope.availableSpec.push(spec)
      $scope.availableSpec.sort((a,b) -> a.id - b.id)

    # Отключение кнопки, если не хватает баллов/предметов на направление
    $scope.disabledButton = (id, userExams) ->
      massSubjects = $scope.availableSpecSubjects.filter((item) -> item.specialty_id == id).map((item) -> {subject: item.subject, points: item.points})
      massUserExams = userExams.map((item) -> {subject: item.subject, points: item.points})
      return !(massSubjects.every((item) -> massUserExams.some((item2) -> item.subject == item2.subject && item.points <= item2.points)))

    # Отправка выбранных направлений
    $scope.sendJson = ->
      specialties = []
      $scope.selectedSpec.forEach((item) -> 
        specialties.push(
          "specialty": item.specialty
        )
      )

      $.ajax(
        url: "/specialties/"
        data: {
          "specialty": specialties
        }
        type: "POST"
        success: (data) ->
          console.log("success")
          location.reload()
        error: (data) ->
          console.log("error")
          location.reload()
      )

    # Фильтрация на платные/бюджетные направления
    $scope.filterItems = (item) ->
      if $scope.paid && $scope.budget
        return true
      else unless $scope.paid || $scope.budget 
        return false
      else unless $scope.paid
        return if item.budget then true else false
      else unless $scope.budget
        return unless item.budget then true else false

    # Контент title тега abbr "Экзамены"
    $scope.examAbbr = (spec) ->
      textExam = ""

      for item in $scope.availableSpecSubjects
        if(item.specialty_id == spec.id)
          textExam += "#{item.subject}: #{item.points}, "

      return textExam.slice(0, textExam.length-2)
  ])