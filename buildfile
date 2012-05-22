require 'buildr/jetty'
require 'readline'

PROJECT_ROOT = File.join(File.dirname(__FILE__), ".")

repositories.remote << 'http://repo1.maven.org/maven2'

VERSION_NUMBER = '1.0'

SPRING_VERSION = '3.1.1.RELEASE'
SPRING = struct(
    :core => group('spring-core', 'spring-beans', 'spring-context', 'spring-context-support', :under=>"org.springframework", :version=>SPRING_VERSION),
    :mvc => transitive("org.springframework:spring-webmvc:jar:#{SPRING_VERSION}"),
    :test => "org.springframework:spring-test:jar:#{SPRING_VERSION}",
    :jdbc => "org.springframework:spring-jdbc:jar:#{SPRING_VERSION}",
    :orm => "org.springframework:spring-orm:jar:#{SPRING_VERSION}",
    :tx => "org.springframework:spring-tx:jar:#{SPRING_VERSION}",
    :web => "org.springframework:spring-web:jar:#{SPRING_VERSION}"
)

CGLIB = struct(
    :core => transitive("cglib:cglib:jar:2.2.2")
)

HIBERNATE = struct(
   :hibernate_core => transitive('org.hibernate:hibernate-core:jar:4.1.0.Final'),
   :hibernate_entitymanager => transitive('org.hibernate:hibernate-entitymanager:jar:4.1.0.Final'),
   :hibernate_validator => transitive('org.hibernate:hibernate-validator:jar:4.1.0.Final')
)

DATABASE = struct(
  :dbcp => transitive('commons-dbcp:commons-dbcp:jar:1.4'),
  :mysql => transitive('mysql:mysql-connector-java:jar:5.1.19')
)

TEST = struct(
  :unit => transitive('junit:junit:jar:4.10')
)

SERVLET = struct(
  :servlet => transitive('javax.servlet:servlet-api:jar:2.5')
)

LOG = struct(
  :log => transitive('org.slf4j:slf4j-log4j12:jar:1.5.6')
)

JETTY_JSP = group('jsp-api-2.1', 'jsp-2.1', :under=> 'org.mortbay.jetty', :version=> Buildr::Jetty::VERSION)

define 'app' do

  Dir.chdir PROJECT_ROOT do
    rm_rf 'target'
  end

  project.version = VERSION_NUMBER
  compile.options.target = '1.6'

  WEB_DEPENDENCY = struct(
    :srping => SPRING,
    :hibernate => HIBERNATE,
    :cglib => CGLIB,
    :database => DATABASE,
    :test => TEST,
    :servlet => SERVLET,
    :log => LOG
  )

  compile.with WEB_DEPENDENCY
  package(:war).with :libs => WEB_DEPENDENCY
  test.using :junit

  Java.classpath << JETTY_JSP

  task('jetty' => [package(:war), jetty.use]) do |task|
    jetty.deploy('http://localhost:8080', task.prerequisites.first)
    Readline::readline('[Type ENTER to stop Jetty]')
  end

  task('asset') do |task|
    Dir.chdir PROJECT_ROOT do
      rm_rf 'src/main/webapp/img'
      rm_rf 'src/main/webapp/css'
      rm_rf 'src/main/webapp/js'
      cp_r 'assets/bootstrap/img', 'src/main/webapp/img'
      cp_r 'assets/bootstrap/css', 'src/main/webapp/css'
      cp_r 'assets/bootstrap/js', 'src/main/webapp/js'
    end
  end

end
