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
  :log => transitive('org.slf4j:slf4j-log4j12:jar:1.6.4')
)

define 'recruiting-idea' do

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

end