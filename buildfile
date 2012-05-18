repositories.remote << 'http://repo1.maven.org/maven2'

VERSION_NUMBER = '1.0'

SPRING = struct(
  :spring_core => 'org.springframework:spring-core:jar:3.1.1.RELEASE',
  :spring_context => 'org.springframework:spring-context:jar:3.1.1.RELEASE',
  :spring_beans => 'org.springframework:spring-beans:jar:3.1.1.RELEASE',
  :spring_web => 'org.springframework:spring-web:jar:3.1.1.RELEASE',
  :spring_webmvc => 'org.springframework:spring-webmvc:jar:3.1.1.RELEASE',
  :spring_tx => 'org.springframework:spring-tx:jar:3.1.1.RELEASE',
  :spring_orm => 'org.springframework:spring-orm:jar:3.1.1.RELEASE',
  :spring_test => 'org.springframework:spring-test:jar:3.1.1.RELEASE'
)

HIBERNATE = struct(
  :hibernate_core => 'org.hibernate:hibernate-core:jar:4.1.0.Final',
  :hibernate_jpa => 'org.hibernate.javax.persistence:hibernate-jpa-2.0-api:jar:1.0.1.Final',
  :hibernate_entitymanager => 'org.hibernate:hibernate-entitymanager:jar:4.1.0.Final',
  :hibernate_validator => 'org.hibernate:hibernate-validator:jar:4.1.0.Final'
)

DATABASE = struct(
  :dbcp => 'commons-dbcp:commons-dbcp:jar:1.4',
  :mysql => 'mysql:mysql-connector-java:jar:5.1.19'
)

TEST = struct(
  :unit => 'junit:junit:jar:4.10'
)


define 'spring-hibernate' do

  project.version = VERSION_NUMBER
  compile.options.target = '1.6'

  WEB_DEPENDENCY = struct(
    :srping => SPRING,
    :hibernate => HIBERNATE,
    :database => DATABASE,
    :test => TEST
  )

  compile.with WEB_DEPENDENCY
  package(:war).with :libs => WEB_DEPENDENCY
  test.using :junit

end