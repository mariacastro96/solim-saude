# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning seeds"
Language.destroy_all
Contact.destroy_all
RelevantLink.destroy_all
Statement.destroy_all

puts "1. Creating Languages"

Language.create!([
  {
    code: 'PT',
    country: 'Portugal',
    language: 'portuguese'
  },
  {
    code: 'ENG',
    country: 'England',
    language: 'english'
  }
])
Language.all.each do |language|
  puts "  > [#{language.language}] language created"
end

puts "2. Creating Contacts"

  Contact.create!([
    {
      code: 'Lx',
      name: 'Contactos Lisboa',
      address: 'Rua da Madalena, n8 - 2',
      zip_code: '1100-321 Lisboa',
      email: 'solidariedade_imigrante@hotmail.com',
      phone: '21 887 07 13',
      schedule: 'Seg-Sex: 10h - 21h | Sab: 10h - 14h',
      language: Language.find_by(code: 'PT')
    },
    {
      code: 'Lx',
      name: 'Contacts Lisbon',
      address: 'Rua da Madalena, n8 - 2',
      zip_code: '1100-321 Lisboa',
      email: 'solidariedade_imigrante@hotmail.com',
      phone: '21 887 07 13',
      schedule: 'Mon-Fri: 10h - 21h | Sat: 10h - 14h',
      language: Language.find_by(code: 'ENG')
    },
    {
      code: 'Bj',
      name: 'Contactos Beja',
      address: 'Rua Mestre Manuel, n13 – r/c',
      zip_code: '7800-307 Beja',
      email: 'solim.beja@sapo.pt',
      phone: '284 323 980',
      schedule: '',
      language: Language.find_by(code: 'PT'),
    },
    {
      code: 'Bj',
      name: 'Contacts Beja',
      address: 'Rua Mestre Manuel, n13 – r/c',
      zip_code: '7800-307 Beja',
      email: 'solim.beja@sapo.pt',
      phone: '284 323 980',
      schedule: '',
      language: Language.find_by(code: 'ENG'),
    }
  ])
Contact.all.each do |contact|
  puts "  > [#{contact.name}] created"
end

puts "3. Creating Links"

  RelevantLink.create!([
    {
      code: 'external',
      name: 'SNS',
      link: 'https://www.sns.gov.pt/sns/servico-nacional-de-saude/',
      language: Language.find_by(code: 'PT')
    },
    {
      code: 'external',
      name: 'SNS - Healthcare',
      link: 'https://www.sns.gov.pt/sns/servico-nacional-de-saude/',
      language: Language.find_by(code: 'ENG')
    },
    {
      code: 'internal',
      name: 'Solidariedade Imigrante',
      link: 'http://www.solimigrante.org/',
      language: Language.find_by(code: 'PT')
    },
    {
      code: 'internal',
      name: 'Solidariedade Imigrante - Organization',
      link: 'http://www.solimigrante.org/',
      language: Language.find_by(code: 'ENG')
    }
  ])
RelevantLink.all.each do |link|
  puts "  > [#{link.name}] created"
end

puts "4. Creating Statements"

Statement.create!([
  {
    code: 'solim',
    title: 'Quem somos?',
    text: LoremIpsum.random(paragraphs: 4),
    language: Language.find_by(code: 'PT')
  },
  {
    code: 'solim',
    title: 'Who we are',
    text: LoremIpsum.random(paragraphs: 4),
    language: Language.find_by(code: 'ENG')
  },
  {
    code: 'solim',
    title: 'O que fazemos?',
    text: LoremIpsum.random(paragraphs: 4),
    language: Language.find_by(code: 'PT')
  },
  {
    code: 'solim',
    title: 'What we do',
    text: LoremIpsum.random(paragraphs: 4),
    language: Language.find_by(code: 'ENG')
  },
  {
    code: 'projeto',
    title: 'Projeto - Saúde',
    text: LoremIpsum.random(paragraphs: 4),
    language: Language.find_by(code: 'PT')
  },
  {
    code: 'projeto',
    title: 'Project - Health',
    text: LoremIpsum.random(paragraphs: 4),
    language: Language.find_by(code: 'ENG')
  }
])
Statement.all.each do |statement|
  puts "  > [#{statement.title}] created"
end

puts "5. Creating Topics"

QuestionTopic.create!([
  {
    code: 'T1',
    name: 'Tópico 1',
    language: Language.find_by(code: 'PT'),
  },
  {
    code: 'T1',
    name: 'Topic 1',
    language: Language.find_by(code: 'ENG')
  },
  {
    code: 'T2',
    name: 'Tópico 2',
    language: Language.find_by(code: 'PT')
  },
  {
    code: 'T2',
    name: 'Topic 2',
    language: Language.find_by(code: 'ENG')
  },
  {
    code: 'T3',
    name: 'Tópico 3',
    language: Language.find_by(code: 'PT')
  },
  {
    code: 'T3',
    name: 'Topic 3',
    language: Language.find_by(code: 'ENG')
  },
  {
    code: 'T4',
    name: 'Tópico 4',
    language: Language.find_by(code: 'PT')
  },
  {
    code: 'T4',
    name: 'Topic 4',
    language: Language.find_by(code: 'ENG')
  }
])
QuestionTopic.all.each do |topic|
  puts "  > [#{topic.name}] created"
end

puts "6. Creating Questions"

Question.create!([
  {
    code: 'Q1',
    question: 'Pergunta 1',
    answer: LoremIpsum.random(paragraphs: 1),
    question_topic: Language.find_by(code: 'PT').question_topics.find_by(code: 'T1')
  },
  {
    code: 'Q1',
    question: 'Question 1',
    answer: LoremIpsum.random(paragraphs: 1),
    question_topic: Language.find_by(code: 'ENG').question_topics.find_by(code: 'T1')
  },
  {
    code: 'Q2',
    question: 'Pergunta 2',
    answer: LoremIpsum.random(paragraphs: 1),
    question_topic: Language.find_by(code: 'PT').question_topics.find_by(code: 'T2')
  },
  {
    code: 'Q2',
    question: 'Question 2',
    answer: LoremIpsum.random(paragraphs: 1),
    question_topic: Language.find_by(code: 'ENG').question_topics.find_by(code: 'T2')
  },
  {
    code: 'Q3',
    question: 'Pergunta 3',
    answer: LoremIpsum.random(paragraphs: 1),
    question_topic: Language.find_by(code: 'PT').question_topics.find_by(code: 'T3')
  },
  {
    code: 'Q3',
    question: 'Question 3',
    answer: LoremIpsum.random(paragraphs: 1),
    question_topic: Language.find_by(code: 'ENG').question_topics.find_by(code: 'T3')
  },
  {
    code: 'Q4',
    question: 'Pergunta 4',
    answer: LoremIpsum.random(paragraphs: 1),
    question_topic: Language.find_by(code: 'PT').question_topics.find_by(code: 'T4')
  },
  {
    code: 'Q4',
    question: 'Question 4',
    answer: LoremIpsum.random(paragraphs: 1),
    question_topic: Language.find_by(code: 'ENG').question_topics.find_by(code: 'T4')
  },
])
Question.all.each do |question|
  puts "  > [#{question.question}] created"
end

puts "7. Creating Studies"

Study.create!([
  {
    code: 'S1',
    title: 'Estudo 1',
    subtitle: 'Breve explicação sobre o estudo',
    language: Language.find_by(code: 'PT')
  },
  {
    code: 'S1',
    title: 'Study 1',
    subtitle: 'Brief explanation about the study',
    language: Language.find_by(code: 'ENG')
  }
])
Study.all.each do |study|
  puts "  > [#{study.title}] created"
end

puts "8. Creating Study fields"

StudyField.create!([
  {
    code: 'SF1',
    title: 'Campo de Estudo 1',
    subtitle: 'Breve explicação',
    total_value: 100,
    study: Language.find_by(code: 'PT').studies.find_by(code: 'S1')
  },
  {
    code: 'SF1',
    title: 'Study Field 1',
    subtitle: 'Brief explanation',
    total_value: 100,
    study: Language.find_by(code: 'ENG').studies.find_by(code: 'S1')
  },
  {
    code: 'SF2',
    title: 'Campo de Estudo 2',
    subtitle: 'Breve explicação',
    total_value: 100,
    study: Language.find_by(code: 'PT').studies.find_by(code: 'S1')
  },
  {
    code: 'SF2',
    title: 'Study Field 2',
    subtitle: 'Brief explanation',
    total_value: 100,
    study: Language.find_by(code: 'ENG').studies.find_by(code: 'S1')
  },
  {
    code: 'SF3',
    title: 'Campo de Estudo 3',
    subtitle: 'Breve explicação',
    total_value: 100,
    study: Language.find_by(code: 'PT').studies.find_by(code: 'S1')
  },
  {
    code: 'SF3',
    title: 'Study Field 3',
    subtitle: 'Brief explanation',
    total_value: 100,
    study: Language.find_by(code: 'ENG').studies.find_by(code: 'S1')
  },
])
StudyField.all.each do |field|
  puts "  > [#{field.title}] created"
end
