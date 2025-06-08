Pod::Spec.new do |spec|
  spec.name         = 'InfolioDesignSystem'
  spec.version      = '0.0.1'
  spec.summary      = 'Design system modular e reutilizável para o app Infolio.'
  spec.description  = <<-DESC
O InfolioDesignSystem fornece componentes visuais, estilos e recursos reutilizáveis para acelerar o desenvolvimento do app Infolio no iOS. 
Inclui paleta de cores, tipografia e UI Components customizados.
  DESC

  spec.homepage     = 'https://github.com/VolneiFoss7/InfolioDesignSystem'
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.author       = { 'Volnei Foss' => 'seu@email.com' }

  spec.platform     = :ios, '13.0'
  spec.swift_version = '5.0'

  spec.source       = { :git => 'https://github.com/VolneiFoss7/InfolioDesignSystem.git', :tag => spec.version.to_s }

  # Altere este caminho conforme a estrutura do seu projeto
  spec.source_files = 'InfolioDesignSystem/**/*.swift'

  # Se tiver assets (ex: .xcassets, .xibs, arquivos json, etc.)
  # spec.resources     = 'Resources/**/*'

  # Se o pod depende de outro pod
  # spec.dependency 'Alamofire'

end