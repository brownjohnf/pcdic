# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

RelationshipType.create(
  [
    {
      name: 'Translation',
      pictogram: '=>',
      description: 'This word can be translated as:'
    },{
      name: 'Bi-directinal Translation',
      pictogram: '<=>',
      description: 'This word can be reciprocally translated as:'
    },{
      name: 'synonym',
      pictogram: '==',
      description: 'This word means the same as (same language):'
    },{
      name: 'antonym',
      pictogram: '!=',
      description: 'This word means the opposite of (same language):'
    }
  ]
)
