//
//  Question.swift
//  PersonalQuiz
//
//  Created by Kirill Shchigolev on 26.10.2022.
//

struct Question {
    let title: String
    let responseTitle: ResponseTyte
    let answers: [Answer]
    
    func getQuestion() -> [Question] {
        [
        Question(
            title: "Какую пищу вы предпочитаете?",
            responseTitle: .single,
            answers: [
                Answer(title: "Свиные ребрышки", animal: .dog),
                Answer(title: "Сыр", animal: .mouse),
                Answer(title: "Мясо", animal: .bear),
                Answer(title: "Салат", animal: .panda)
            ]
        ),
        Question(
            title: "Что вам нравится больше?",
            responseTitle: .multiple,
            answers: [
                Answer(title: "Грызть", animal: .dog),
                Answer(title: "Прятаться", animal: .mouse),
                Answer(title: "Пугать", animal: .bear),
                Answer(title: "Релаксировать", animal: .panda)
            ]
        ),
        Question(
            title: "Любите ли вы поездки на машине?",
            responseTitle: <#T##ResponseTyte#>,
            answers: [
                Answer(title: "Ненавижу", animal: .mouse),
                Answer(title: "Свиные ребрышки", animal: .dog),
                Answer(title: "Свиные ребрышки", animal: .dog),
                Answer(title: "Свиные ребрышки", animal: .dog)
            ]
        )
        ]
    }
}

enum ResponseTyte {
    case single
    case multiple
    case ranged
}

struct Answer {
    let title: String
    let animal: Animal
}

enum Animal: Character {
    case dog = "🐶"
    case mouse = "🐭"
    case bear = "🐻"
    case panda = "🐼"
    
    var definition: String {
        switch self {
            
        case .dog:
            return "Вы очень дружелюбный человек, вам нравится проводить время с друзьями!"
        case .mouse:
            return "Вы по своей натуре - трус, вы боитесь сделать первый шаг, даже когда играете в шахматы!"
        case .bear:
            return "Вы гордый, смелый и отважный, вас все уважают за ваши лидерские качества!"
        case .panda:
            return "Вы ловиде дзен во всех моментах своей жизни, вечно на расслабоне, кайфуете от всего!"
        }
    }
}
