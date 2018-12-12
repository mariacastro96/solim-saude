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
QuestionTopic.destroy_all
Question.destroy_all
Study.destroy_all
StudyField.destroy_all
StudyVariable.destroy_all

puts "1. Creating Languages"

Language.create!([
  {
    code: 'PT',
    country: 'Portugal',
    language: 'portuguese',
    language_id: 'pt'
  },
  {
    code: 'ENG',
    country: 'England',
    language: 'english',
    language_id: 'en'
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
    name: 'Solidariedade Imigrante',
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
    text: "<p>Solidariedade Imigrante é uma associação pela defesa dos direitos dos imigrantes em Portugal, de âmbito nacional e sem fins lucrativos, criada em 2001.</p>
<br/>
<p>Queremos dar a palavra aos imigrantes, uma palavra autônoma e independente, para que sejamos os verdadeiros protagonistas na defesa dos nossos interesses.</p>
<br/>
<p>Queremos que todos possam exercer os seus direitos, independentemente do pais de origem, da religião, da etnia e do sexo, através da luta por direitos iguais.</p>
<br/>
<p>Pertencemos à varias redes de associações nacionais e internacionais, nomeadamente a Plataforma de Associações de Imigrantes, a Rede de Combate a Exclusão Social e Pobreza, a Plataforma artigo 65 – Habitação para tod@s, a Rede No-Vox; somos ainda um dos promotores do Forum Social Português.</p>
<br/>
<p>Lutamos diariamente pela autonomia financeira. </p>
<br/>
<p>Aqueles que ajudamos também ajudam a associação, associando-se e pagando as suas quotas, numa atitude de responsabilização e na criação de um sentimento de pertence.</p>
",
    language: Language.find_by(code: 'PT')
  },
  {
    code: 'solim',
    title: 'Who we are',
    text: '<p>Solidariedade Imigrante is a national, not-for-profit organisation, set up in 2001 in order to defend the rights of immigrants in Portugal.</p>
<br/>
<p>We claim an independent voice, so we may fully take part in the struggle for the defense of our common rights and interests.</p>
<br/>
<p>We want everyone to be in a position to exercise their rights as citizens, without regard to country of origin, religion, race or gender.</p>
<br/>
<p>We belong to various national and international organisation networks: Plataforma de Associações de Imigrantes, Rede de Combate a Exclusão Social e Pobreza, a Plataforma artigo 65 – Habitação para tod@s and the No-Vox network. We are also part of the Portuguese social forum.We are a resistance and pressure group. </p>
<br/>
<p>We believe in solidarity between Portuguese and foreign citizens, in order to defend interests that are common to all workers.</p>
<br/>
<p>Our organisation counts thousands of members, from over 80 different countries.</p>
<br/>
<p> Every day, we keep up the fight for our financial autonomy.Those who help us, help the organisation, through their membership and monthly contribution, in a spirit of dependability, in a shared struggle.</p>',
    language: Language.find_by(code: 'ENG')
  },
  {
    code: 'solim',
    title: 'O que fazemos?',
    text: '<p>Damos informações sobre direitos e deveres dos cidadãos estrangeiros e apoiamos nas seguintes situações:</p>
<ul>
<li>A regularização (autorização de residência e de permanência, visto de estudo…)</li>
<li>O reagrupamento familiar</li>
<li>O asilo politico.</li>
<li>O direito à educação, à saude, à habitação, à segurança social e ao trabalho.</li>
</ul>
<p>Apoiamos e acompanhamos os trabalhadores na resolução dos conflictos laborais.</p>
<br/>
<p>Prestamos apoio em situações relacionadas com prisões, tribunais e zona internacional do aeroporto de Lisboa.</p>
<br/>
<p>Temos uma parceria com o Instituto de Emprego e Formação Profissional (UNIVA) para orientação e acompanhamento na procura de emprego e na formação profissional.</p>
<br/>
<p>Organizamos cursos de português, inglês, russo, arabe, crioulo e informatica.Organizamos Workshops de dança, percussão, video e outras areas artisticas.</p>
<br/>
<p>Organizamos encontros interculturais e concertos, no âmbito da defesa dos direitos humanos, com o objectivo de permitir o conhecimento de culturas diferentes e um debate de ideias e experiências.</p>
<br/>
<p>Organizamos e participamos em debates e exposições sobre a luta dos imigrantes em Portugal, em colaboração com universidades, escolas e outros organismos.</p>
<br/>
<p>Propomos-nos em organizar muitas outras actividades, nos bairros, nos locais de trabalho e na rua, contando com a tua participação.</p>
<br/>
<p>Temos um bar aberto e organizamos jantares à volta de gastronomia do mundo, debates, filmes e musica de vários países, para promover a confraternização e a vivência intercultural.</p>
<br/>
<p>Par alem das actividades que desenvolvemos com todas as comunidades imigrantes, a nossa associação, pela dinâmica exercida, criou outras áreas de trabalho, nomeadamente o Jornal da SOLIM, o grupo Juventude e mobilidade, o grupo Direito à Habitação, o grupo Mulheres Imigrantes.</p>',
    language: Language.find_by(code: 'PT')
  },
  {
    code: 'solim',
    title: 'What we do',
    text: '<p>We give information and support about rights and duties of the foreigner citizens concerning regulations (residence permit), family reunification, political asylum and rights of education, health, living space plus social and working insurance.</p>
<br/>
<p>we help and accompany workers in the resolution of their problems at work.</p>
<br/>
<p>we offer help in situations concerning to prison, court and the international zone of the Lisbon airport.</p>
<br/>
<p>we have a partnership with the Institue of work and professional education (UNIVA) to support and accompany immigrants with the search of jobs and education.</p>
<br/>
<p>we organize language courses (Portuguese, English, Russian, courd and Arabian) and computer courses.</p>
<br/>
<p>we organize dance, percussion, video and other artistic workshops.</p>
<br/>
<p>we organize intercultural get-togethers and concerts in order to defend the human rights with the aim to give access to different cultures and to debate ideas and experiences.</p>
<br/>
<p>we organize and participate in debates and expositions about the fight of the immigrants in Portugal in cooperation with universities, schools and other organizations.</p>
<br/>
<p>we intend to organize even more activities in the neighborhoods, the working space and in the streets provided your participation.</p>
<br/>
<p>we organize dinners with cuisine from all around the world, accompanied by debates, films, and music from the correlative countries to promote the intercultural confrontation and life together. </p>
<br/>
<p>Besides the mentioned activities that involve all kind of immigrant communities, our association also created more working areas, for example, the magazine SOLIM, the group of youth and mobility, the group for the right of living space and the group of immigrant women.</p>',
    language: Language.find_by(code: 'ENG')
  },
  {
    code: 'projeto',
    title: 'Projeto - Saúde',
    text: '<p>O projeto <b>SAUDE SEM BARREIRAS</b> foi desenvolvido pela <b>Associação Solidariedade Imigrante</b>
ao longo de 2018 e contribuiu para os objetivos gerais da associação:</p>
<br/>
<ul>
<li>Promoção dos direitos dos imigrantes,</li>
<li> Promoção da igualdade de oportunidades</li>
<li>Combate e denúncia de situações de discriminação</li>
</ul>
<br/>
<p>Com um enfoque específico nas questões da saúde o projeto visou promover a integração
multinível dos imigrantes, quer de pessoas recém-chegadas, quer de pessoas com mais tempo
de permanência em Portugal e apoiar estes cidadãos na sua integração na sociedade de
acolhimento, dotando-os de conhecimento e informação útil à sua integração.</p>
<br/>
<p>No âmbito do projeto foram desenvolvidas 3 atividades, complementares entre si:</p>
<br/>
<ol>
<li> <b>Atendimento individualizado a cidadãos imigrantes</b>
<br/>
<br/>
Com uma abordagem ajustada a cada caso o atendimento inseriu-se e complementou o
atendimento geral da associação, introduzindo uma mais-valia na prestação de informação
sobre acesso à saúde e um acompanhamento próximo de casos onde o acesso à saúde se
encontra obstaculizado. </li>
<br/>
<li><b> Produção de um vídeo informativo e site</b>
<br/>
<br/>
Construído pelos próprios imigrantes, o vídeo identifica alguns dos problemas com que os
cidadãos estrangeiros se deparam no contacto com os serviços de saúde e disponibiliza
informação relevante neste domínio. O vídeo foi alojado neste site onde se disponibiliza
informação complementar. </li>
<br/>
<li> <b>Inquérito e peça de teatro forum</b>
<br/>
<br/>
Esta atividade consistiu na aplicação de questionários a imigrantes que recorreram ao
atendimento da Solidariedade Imigrante com vista ao levantamento das condicionantes que se
verificam, na prática, no acesso à saúde. Os resultados deste levantamento podem ser
consultados aqui e deram corpo a uma peça de teatro forum sobre acesso à saúde, em
parceria com o Grupo de Teatro do Oprimido de Lisboa (GTO).</li>
</ol>
<br/>
O projeto contou com o contributo de voluntários/as e com o apoio financeiro do Alto
Comissariado para as Migrações. <a href="https://www.google.com">google</a>',
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
    name: 'Acordos com países',
    language: Language.find_by(code: 'PT'),
  },
  {
    code: 'T1',
    name: 'Topic 1',
    language: Language.find_by(code: 'ENG')
  },
  {
    code: 'T2',
    name: 'Sem acordo',
    language: Language.find_by(code: 'PT')
  },
  {
    code: 'T2',
    name: 'Topic 2',
    language: Language.find_by(code: 'ENG')
  },
  {
    code: 'T3',
    name: 'Preços',
    language: Language.find_by(code: 'PT')
  },
  {
    code: 'T3',
    name: 'Topic 3',
    language: Language.find_by(code: 'ENG')
  },
  {
    code: 'T4',
    name: 'Outras infos',
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
    question: 'Sou nacional de Andorra?',
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
    question: 'Sou nacional de Angola?',
    answer: LoremIpsum.random(paragraphs: 1),
    question_topic: Language.find_by(code: 'PT').question_topics.find_by(code: 'T1')
  },
  {
    code: 'Q2',
    question: 'Question 2',
    answer: LoremIpsum.random(paragraphs: 1),
    question_topic: Language.find_by(code: 'ENG').question_topics.find_by(code: 'T1')
  },
  {
    code: 'Q3',
    question: 'Sou nacional do Brasil?',
    answer: LoremIpsum.random(paragraphs: 1),
    question_topic: Language.find_by(code: 'PT').question_topics.find_by(code: 'T1')
  },
  {
    code: 'Q3',
    question: 'Question 3',
    answer: LoremIpsum.random(paragraphs: 1),
    question_topic: Language.find_by(code: 'ENG').question_topics.find_by(code: 'T1')
  },
  {
    code: 'Q4',
    question: 'Estou em Portugal há mais de 90 dias?',
    answer: LoremIpsum.random(paragraphs: 1),
    question_topic: Language.find_by(code: 'PT').question_topics.find_by(code: 'T2')
  },
  {
    code: 'Q4',
    question: 'Question 4',
    answer: LoremIpsum.random(paragraphs: 1),
    question_topic: Language.find_by(code: 'ENG').question_topics.find_by(code: 'T2')
  },
  {
    code: 'Q5',
    question: 'Que documentos tenho de apresentar para me inscrever no CS?',
    answer: LoremIpsum.random(paragraphs: 1),
    question_topic: Language.find_by(code: 'PT').question_topics.find_by(code: 'T2')
  },
  {
    code: 'Q5',
    question: 'Question 5',
    answer: LoremIpsum.random(paragraphs: 1),
    question_topic: Language.find_by(code: 'ENG').question_topics.find_by(code: 'T2')
  },
  {
    code: 'Q6',
    question: 'Pergunta 6',
    answer: LoremIpsum.random(paragraphs: 1),
    question_topic: Language.find_by(code: 'PT').question_topics.find_by(code: 'T3')
  },
  {
    code: 'Q6',
    question: 'Question 6',
    answer: LoremIpsum.random(paragraphs: 1),
    question_topic: Language.find_by(code: 'ENG').question_topics.find_by(code: 'T3')
  },
  {
    code: 'Q7',
    question: 'Vacinação',
    answer: LoremIpsum.random(paragraphs: 1),
    question_topic: Language.find_by(code: 'PT').question_topics.find_by(code: 'T4')
  },
  {
    code: 'Q7',
    question: 'Question 7',
    answer: LoremIpsum.random(paragraphs: 1),
    question_topic: Language.find_by(code: 'ENG').question_topics.find_by(code: 'T4')
  },
  {
    code: 'Q8',
    question: 'Urgências',
    answer: LoremIpsum.random(paragraphs: 1),
    question_topic: Language.find_by(code: 'PT').question_topics.find_by(code: 'T4')
  },
  {
    code: 'Q8',
    question: 'Question 8',
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

puts "9. Creating Variables"

StudyVariable.create!([
  {
    code: 'V1',
    name: 'Variavel 1',
    value: 20,
    color: '#24890D',
    study_field: Language.find_by(code: 'PT').studies.find_by(code: 'S1').study_fields.find_by(code: 'SF1')
  },
  {
    code: 'V1',
    name: 'Variable 1',
    value: 20,
    color: '#24890D',
    study_field: Language.find_by(code: 'ENG').studies.find_by(code: 'S1').study_fields.find_by(code: 'SF1')
  },
  {
    code: 'V2',
    name: 'Variavel 2',
    value: 80,
    color: '#91C487',
    study_field: Language.find_by(code: 'PT').studies.find_by(code: 'S1').study_fields.find_by(code: 'SF1')
  },
  {
    code: 'V2',
    name: 'Variable 2',
    value: 80,
    color: '#91C487',
    study_field: Language.find_by(code: 'ENG').studies.find_by(code: 'S1').study_fields.find_by(code: 'SF1')
  },
  {
    code: 'V1',
    name: 'Variavel 1',
    value: 20,
    color: '#24890D',
    study_field: Language.find_by(code: 'PT').studies.find_by(code: 'S1').study_fields.find_by(code: 'SF2')
  },
  {
    code: 'V1',
    name: 'Variable 1',
    value: 20,
    color: '#24890D',
    study_field: Language.find_by(code: 'ENG').studies.find_by(code: 'S1').study_fields.find_by(code: 'SF2')
  },
  {
    code: 'V2',
    name: 'Variavel 2',
    value: 80,
    color: '#91C487',
    study_field: Language.find_by(code: 'PT').studies.find_by(code: 'S1').study_fields.find_by(code: 'SF2')
  },
  {
    code: 'V2',
    name: 'Variable 2',
    value: 80,
    color: '#91C487',
    study_field: Language.find_by(code: 'ENG').studies.find_by(code: 'S1').study_fields.find_by(code: 'SF2')
  },
  {
    code: 'V1',
    name: 'Variavel 1',
    value: 20,
    color: '#24890D',
    study_field: Language.find_by(code: 'PT').studies.find_by(code: 'S1').study_fields.find_by(code: 'SF3')
  },
  {
    code: 'V1',
    name: 'Variable 1',
    value: 20,
    color: '#24890D',
    study_field: Language.find_by(code: 'ENG').studies.find_by(code: 'S1').study_fields.find_by(code: 'SF3')
  },
  {
    code: 'V2',
    name: 'Variavel 2',
    value: 80,
    color: '#91C487',
    study_field: Language.find_by(code: 'PT').studies.find_by(code: 'S1').study_fields.find_by(code: 'SF3')
  },
  {
    code: 'V2',
    name: 'Variable 2',
    value: 80,
    color: '#91C487',
    study_field: Language.find_by(code: 'ENG').studies.find_by(code: 'S1').study_fields.find_by(code: 'SF3')
  }
])
StudyVariable.all.each do |variable|
  puts "  > [#{variable.name}] created"
end
