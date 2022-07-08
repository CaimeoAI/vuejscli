acp:
	git add .
	git commit -m "$m"
	git push -u origin "$b"

repo:
	echo "# $n" >> README.md
	git init
	git add README.md
	git commit -m "$m"
	git remote add origin https://github.com/CaimeoAI/$a.git
	git push -u origin master

pullall:
	cd /home/jude/Workspace-DCI/DCI-Solutions/General && git pull
	cd /home/jude/Documents/projects/BasicDigitalLiteracy && git pull
	cd /home/jude/Documents/projects/BDL/ProjectOne && git pull
	cd /home/jude/Documents/projects/DCI-CourseProjectOne && git pull
	cd /home/jude/Documents/projects/OC/OC-FinalProjectOne && git pull
	cd /home/jude/Documents/projects/OC/websitepractice && git pull
	cd /home/jude/Workspace-DCI/MySolutions/uib/WebsiteExperimental && git pull