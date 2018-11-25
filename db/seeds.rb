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
