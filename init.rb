Redmine::Plugin.register :redmine_pdf_export_backports do
  name 'Redmine Pdf Export Backports plugin'
  author 'Yukinari Toyota'
  description 'This plugin provides backport support of latest pdf export improvoments to redmine 2.2/2.3'
  version '0.0.1'
  url 'http://github.com/t-yuki/redmine_pdf_export_backports/'
  author_url 'http://github.com/t-yuki/'
end

require 'plugins/rfpdf/lib/tcpdf'
Object.send(:remove_const, :PDF_PRODUCER)
require 'plugins/rfpdf/lib/tcpdf_patched'
TCPDF.font_path = File.expand_path('lib/plugins/rfpdf/lib/fonts/')

