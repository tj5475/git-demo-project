#
#  Create a ansible role Structure in windows

import os

roleDir = input(r'Enter Role Dir: ')
roleName = input('Enter role Name: ')
roleFolders = ['default', 'files', 'handlers', 'meta',  'templates', 'tasks', 'vars']
ymlFolders = ['default', 'handlers', 'meta', 'tasks', 'vars']
ymlFile = 'main.yml'

os.chdir(roleDir)
if not os.path.exists(roleName):
    os.makedirs(roleName)

newRolePath = os.path.join(roleDir, roleName)
os.chdir(newRolePath)

for folder in roleFolders:
    if not os.path.exists(folder):
        os.mkdir(folder)


for ymlFolder in ymlFolders:
    ymlPath = os.path.join(ymlFolder, ymlFile)
    if not os.path.exists(ymlPath):
        open(ymlPath, 'w+')
        with open(ymlPath, 'a') as f:
            f.write('---')
            f.close()
