# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{s3db-backup}
  s.version = "0.3.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Matthias Marschall"]
  s.date = %q{2010-10-25}
  s.description = %q{This gem helps you to easily create backups of your database and store them on amazon S3. It uses standard Unix tools to do the heavy lifting like dumping the db (mysqldump), compressing (gzip, tar), and encrypting (ccrypt).}
  s.email = %q{mm@agileweboperations.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "generators/s3db_backup/USAGE",
     "generators/s3db_backup/s3db_backup_generator.rb",
     "generators/s3db_backup/templates/s3_config.yml.erb",
     "generators/s3db_backup/templates/s3db_backup.rake",
     "generators/s3db_backup/templates/secret.txt",
     "lib/s3db-backup.rb",
     "s3db-backup.gemspec",
     "spec/s3db-backup_spec.rb",
     "spec/spec.opts",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/mmarschall/s3db-backup}
  s.post_install_message = %q{
    -------------------------------------------------------------------------------

    Please put your Amazon EC2 credentials into:

      $ config/s3_config.yml

    and put a strong, random key into:
    
      $ db/secret.txt
      
    before running your first backup!
    
    -------------------------------------------------------------------------------

}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Backup and restore your database to amazon S3, encrypting and compressing it on the fly}
  s.test_files = [
    "spec/s3db-backup_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<right_aws>, ["~> 2.0.0"])
      s.add_runtime_dependency(%q<progressbar>, [">= 0.9.0"])
      s.add_development_dependency(%q<rspec>, [">= 1.2.9"])
    else
      s.add_dependency(%q<right_aws>, ["~> 2.0.0"])
      s.add_dependency(%q<progressbar>, [">= 0.9.0"])
      s.add_dependency(%q<rspec>, [">= 1.2.9"])
    end
  else
    s.add_dependency(%q<right_aws>, ["~> 2.0.0"])
    s.add_dependency(%q<progressbar>, [">= 0.9.0"])
    s.add_dependency(%q<rspec>, [">= 1.2.9"])
  end
end

