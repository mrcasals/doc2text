module Doc2Text
  class Resolution
    def self.parse_and_save(source, output)
      case File.extname source
        when '.docx'
          Doc2Text::XmlBasedDocument::Docx::Document.parse_and_save source, output
        else
          Doc2Text::XmlBasedDocument::Odt::Document.parse_and_save source, output
      end
    end
  end
end
