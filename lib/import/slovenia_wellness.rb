require 'import/transformer'
require 'import/datasource'

module Import
  class SloveniaWellnessDatasource < Datasource
    def initialize
      super(
        :file,
        "lib/tasks/data/slovenia_wellness.json"
      )
    end
  end

  class SloveniaWellnessTransformer < Transformer
    def description
      "Import wellness data from dj-slovenia".freeze
    end

    def transform(data)
      json = JSON.parse(data)

      clean_data = []
      json['results']['collection1'].each do |klubdata|
        p klubdata
        name = klubdata['name']
        website = klubdata['website']['href']
        address = klubdata['address']['text']
        address = address.sub('Naslov podjetja: ', '').sub('Povezava na stran podjetja', '').gsub("\n", ' ').strip

        klub = {
          name: name,
          address: address,
          website: website,
          categories: ['wellness']
        }

        clean_data << klub
      end

      clean_data
    end
  end
end
