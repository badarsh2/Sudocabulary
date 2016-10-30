import shutil
import subprocess
from setuptools.command.install import install
import os
from os.path import expanduser

class InstallEntry(install):
    """Customized setuptools install command - runs the shell script"""
    def run(self):
        curr = (os.getcwd())
        os.system('chmod +x ' + curr + '/sudocabulary/script.sh')
        home = expanduser("~")
        shutil.copyfile(curr + "/sudocabulary/.vocab", home + "/.vocab")
        shutil.copyfile(curr + "/sudocabulary/.vocabscript", home + "/.vocabscript")
        subprocess.call(['./sudocabulary/script.sh'])
        install.run(self)
