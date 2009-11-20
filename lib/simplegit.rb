# a super simple example class to use git in ruby
class SimpleGit
  
  def initialize(git_dir = '.')
    @git_dir = File.expand_path(git_dir)
  end
  
  def show(treeish = 'master')
    command("git show #{treeish}")
  end
  
  def testmethod
    "My Git Project"
  end

  def testmethod_experiment
    "My Git Project experiment branch method"
  end

  private
  
  def testmethod_experiment1
    "My Git Project experiment branch method 1"
  end

    def command(git_cmd)
      Dir.chdir(@git_dir) do
        return `#{git_cmd} 2>&1`.chomp
      end
    end
  
end
